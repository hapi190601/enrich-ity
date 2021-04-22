class Public::RoomsController < ApplicationController
  before_action :authenticate_user!

  def create
    @room = Room.create(:name => "DM")
    @entry1 = Entry.create(:room_id => @room.id, :user_id => current_user.id)
    @entry2 = Entry.create(params.require(:entry).permit(:user_id, :room_id).merge(:room_id => @room.id))
    redirect_to room_path(@room.id)
  end

  def show
    @room = Room.find(params[:id])

    # 通知のリンクからチャットルームへ来た時にそのroom_idの通知を既読扱いにする
    unchecked_notifications = current_user.passive_notifications.where(:room_id => @room.id, :checked => false)
    unchecked_notifications.update_all(:checked => true)

    if Entry.where(:user_id => current_user.id, :room_id => @room.id).present?
      @direct_messages = @room.direct_messages
      @entries = @room.entries
    else
      redirect_back(:fallback_location => root_path)
    end

    # チャット相手のidを@opponent_idに代入
     @entries.each do |e|
        if e.user != current_user
          @opponent_id = e.user.id
        end
     end
  end
end
