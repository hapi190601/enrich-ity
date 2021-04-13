class DirectMessageBroadcastJob < ApplicationJob
  queue_as :default

  def perform(direct_message)
    # マルチスレッド処理対策？書いても効果なし
    # Rails.application.eager_load!
    ActionCable.server.broadcast "room_channel_#{direct_message.room_id}", message: render_direct_message(direct_message)
  end

  private

  def render_direct_message(direct_message)
    # マルチスレッド処理対策？書いても効果なし
    # Rails.application.eager_load!
    ApplicationController.renderer.render(partial: 'direct_messages/direct_message', locals: { direct_message: direct_message })
  end
end
