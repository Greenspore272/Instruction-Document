json.extract! lesson, :id, :title, :content, :section, :order, :created_at, :updated_at
json.url lesson_url(lesson, format: :json)
