json.extract! student, :id, :user_id, :name, :phone, :created_at, :updated_at
json.url student_url(student, format: :json)
