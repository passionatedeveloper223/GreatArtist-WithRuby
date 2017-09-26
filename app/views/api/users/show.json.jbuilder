# json.extract! @user, :id, :username


json.user do
  json.extract! @user, :id, :username, :name, :website, :bio, :email
  json.avatarOrig asset_path(@user.avatar.url(:original))
  json.postIds @user.posts.map(&:id)
  json.followerIds @user.followers.map(&:id)
  json.followeeIds @user.followed_artists.map(&:id)
end


json.posts do
  @user.posts.each do |post|
    json.set! post.id do
      json.imageThumb asset_path(post.image.url(:thumb))
      json.id post.id
      json.commentIds post.comments.map(&:id)
      json.likerIds post.likes.map(&:user_id)
    end
  end
end
