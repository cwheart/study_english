# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

File.open("res/word.txt", 'r') do |f|
  words = []
  while line=f.gets
    arr = line.strip.split(/[\[\]\/]/)
    next if arr.empty?
    words.push({name: arr[0].strip, pronounce: arr[1].strip, content: arr[2].strip})
    if words.count >= 200
      Word.create(words)
      words = []
    end
  end
  Word.create(words)
end
