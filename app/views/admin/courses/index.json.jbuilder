json.array!(@admin_courses) do |admin_course|
  json.extract! admin_course, :name
  json.url admin_course_url(admin_course, format: :json)
end
