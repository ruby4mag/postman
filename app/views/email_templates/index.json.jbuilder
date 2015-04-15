json.array!(@email_templates) do |email_template|
  json.extract! email_template, :id, :name, :last_name, :users_id, :content, :user_id
  json.url email_template_url(email_template, format: :json)
end
