json.array!(@admin_words) do |admin_word|
  json.extract! admin_word, :name
  json.url admin_word_url(admin_word, format: :json)
end
