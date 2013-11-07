json.array!(@quiz_answers) do |quiz_answer|
  json.extract! quiz_answer, 
  json.url quiz_answer_url(quiz_answer, format: :json)
end
