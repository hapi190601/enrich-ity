class RoomChannel < ApplicationCable::Channel

  def subscribed
    # stream_from "some_channel"
    stream_from "room_channel_#{params['room']}"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end

  def speak(data)
    direct_message = DirectMessage.create! message: data['direct_message'], user_id: current_user.id, room_id: params['room']

    # 通知
    if direct_message.present?
      # チャット相手のidを送っていないからデータが持ってこれない
      room_other_member = Entry.where(room_id: params['room']).where.not(user_id: current_user.id)
      the_id = room_other_member.find_by(room_id: params['room'])

      notification = current_user.active_notifications.new(
        room_id: params['room'],
        message_id: direct_message.id,
        visited_id: the_id.user_id,
        visitor_id: current_user.id,
        action: 'チャット',
      )

      # 自分の投稿に対するコメントの場合は、通知済みとする
      if notification.visitor_id == notification.visited_id
        notification.checked = true
      end

      notification.save if notification.valid?
    end
  end

end