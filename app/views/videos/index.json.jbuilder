json.array!(@videos) do |video|
  json.extract! video, :id, :title, :clip, :summary
  json.url video_url(video, format: :json)
end
