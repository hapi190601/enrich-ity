module ApplicationCable
  class Connection < ActionCable::Connection::Base
    
    # 処理①
    # ハンドシェイク後、WebSocket通信を確立させるか判断する
    identified_by :current_user

    def connect
      self.current_user = find_verified_user
    end

    protected
    def find_verified_user
      #ユーザーidで認証する
      verified_user = User.find_by(id: env['warden'].user.id)
      # 認証したユーザー(verified_user)出ない限りはreturn
      return reject_unauthorized_connection unless verified_user
      verified_user
    end
  end
end