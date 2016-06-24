json.array!(@activities) do |activity|
  json.extract! activity, :id, :pack_id, :title, :receive_content, :reflect_content, :respond_content
  json.url activity_url(activity, format: :json)
end
