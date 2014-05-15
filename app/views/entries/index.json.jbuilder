json.array!(@entries) do |entry|
  json.extract! entry, :id, :title, :sub_title, :text, :pictures, :videos, :blog_id
  json.url entry_url(entry, format: :json)
end
