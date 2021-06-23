json.array! @messages do |message|
  json.extract! message, :id, :text, :author
end
