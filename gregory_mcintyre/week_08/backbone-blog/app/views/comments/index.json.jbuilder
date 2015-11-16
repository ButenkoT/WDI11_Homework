json.array!(@comments) do |comment|
  json.extract! comment, :id, :content, :post_id
  json.url post_comment_url(comment.post, comment, format: :json)
end
