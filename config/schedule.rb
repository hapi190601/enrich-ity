set :output, 'log/crontab.log'
# デプロイしたら:developmentを変える必要あり？調べる
set :environment, :development

# 投稿掲載期限1ヶ月
every 1.month do
  runner "Post.monthly_destroy_all"
end
