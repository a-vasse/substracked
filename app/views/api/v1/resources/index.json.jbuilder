json.array! @resources do |resource|
  json.extract! resource, :id, :name, :url, :user_id
end
