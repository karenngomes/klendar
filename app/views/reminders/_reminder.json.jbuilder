json.extract! reminder, :id, :title, :description, :date, :remind_me, :created_at, :updated_at
json.url reminder_url(reminder, format: :json)