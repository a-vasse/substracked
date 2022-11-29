json.array! @subscriptions do |subscription|
  json.extract! subscription, :id, :region, :start_date, :renewal_date, :user_id, :plan_id
end
