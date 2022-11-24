json.array! @plans do |plan|
  json.extract! plan, :id, :name, :price, :billing_cycle, :cancellation_notice, :resource_id
end
