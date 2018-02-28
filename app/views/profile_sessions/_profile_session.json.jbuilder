json.extract! profile_session, :id, :profile_id, :user_id, :created_at, :updated_at
json.url profile_session_url(profile_session, format: :json)
