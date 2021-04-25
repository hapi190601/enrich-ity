set :output, 'log/crontab.log'
# set :environment, :development
set :environment, :production

# 投稿掲載期限1ヶ月
every 1.day, at: '6:00 am' do
  runner "Post.monthly_destroy_all"
end

# ゲストユーザー毎日削除
every 1.day, at: '6:00 am' do
  runner "User.guest_delete"
end
