json.array!(@classifieds) do |classified|
  json.extract! classified, :id, :title, :date_posted, :picture, :price, :address, :phone_number, :email, :description
  json.url classified_url(classified, format: :json)
end
