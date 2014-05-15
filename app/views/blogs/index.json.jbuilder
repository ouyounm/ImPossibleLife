json.array!(@blogs) do |blog|
  json.extract! blog, :id, :title, :background_image
  json.url blog_url(blog, format: :json)
end
