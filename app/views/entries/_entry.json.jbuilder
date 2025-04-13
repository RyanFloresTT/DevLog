json.extract! entry, :id, :session_id, :prompt, :response, :created_at, :updated_at
json.url entry_url(entry, format: :json)
