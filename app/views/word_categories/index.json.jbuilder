json.array!(@word_categories) do |word_category|
  json.extract! word_category, :name
  json.url word_category_url(word_category, format: :json)
end
