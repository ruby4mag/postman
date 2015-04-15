json.array!(@email_lists) do |email_list|
  json.extract! email_list, :id, :name, :users_id, :list, :user_id
  json.url email_list_url(email_list, format: :json)
end
