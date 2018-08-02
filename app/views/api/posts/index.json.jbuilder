json.array! @posts do  |post|
    json.extract! post, :title
    json.photoUrl url_for(post.photo)
end