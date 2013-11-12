json.array!(@new_words) do |new_word|
  json.extract! new_word, 
  json.url new_word_url(new_word, format: :json)
end
