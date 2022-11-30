json.array! @notifications do |notification|
  json.extract! notification, :id, :content, :user_id
end
