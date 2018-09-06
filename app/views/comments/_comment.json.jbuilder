json.extract! comment, :id, :event_id, :status, :content, :writer_id, :created_at, :updated_at
json.url comment_url(comment, format: :json)
