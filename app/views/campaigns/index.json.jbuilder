json.array!(@campaigns) do |campaign|
  json.extract! campaign, :id, :name, :account_id, :email_limit, :email_used
  json.url campaign_url(campaign, format: :json)
end
