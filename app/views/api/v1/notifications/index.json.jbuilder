json.array! @notifications do |notification|
  json.extract! notification, :content, :user_id
end
