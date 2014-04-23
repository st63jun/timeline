json.array!(@tasks) do |task|
  json.extract! task, :id, :project_id, :parent_id, :title
  json.url task_url(task, format: :json)
end
