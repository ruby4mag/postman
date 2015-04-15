json.array!(@accounts) do |account|
  json.extract! account, :id, :name, :address, :contact_num, :logo
  json.url account_url(account, format: :json)
end
