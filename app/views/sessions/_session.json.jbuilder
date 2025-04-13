json.extract! session, :id, :project_id, :started_at, :ended_at, :created_at, :updated_at
json.url session_url(session, format: :json)
