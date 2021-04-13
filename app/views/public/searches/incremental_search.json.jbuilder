json.array! @posts do |post|
  json.id post.id
  json.user_id post.user_id
  json.genre_id post.genre_id
  json.image_url Refile.attachment_url(post, :image, :fill, 250, 250)
  json.title post.title
  json.content post.content.truncate(50)
  json.age post.age
  json.gender post.gender
  json.prefecture_code post.prefecture_code
  json.prefecture_name post.prefecture_name
  json.municipality post.municipality
end
