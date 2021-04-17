class RoomChannel < ApplicationCable::Channel

  # 処理②
  # サーバー側で受け取った内容をどこに配信するかを定義している
  # room_channel_1,room_channel_2...とparams['room']にはroomのidが入る
  # つまり、部屋毎にその部屋にアクセスした人クライアントに配信している
  def subscribed
    # stream_from "some_channel"
    stream_from "room_channel_#{params['room']}"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end

  # 処理⑤
  def speak(data)
    direct_message = DirectMessage.create! message: data['direct_message'], user_id: current_user.id, room_id: params['room']

    opponent_id = data['opponent_id']

    # 通知
    notification = current_user.active_notifications.new(
      room_id: params['room'],
      direct_message_id: direct_message.id,
      visited_id: opponent_id.to_i,
      visitor_id: current_user.id,
      action: 'チャット',
    )
    notification.save
  end
end