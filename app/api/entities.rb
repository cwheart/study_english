require 'grape'

module StudyEnglish
  module Entities
    class Word < Grape::Entity
      expose :id, documentation: { type: String, desc: 'ID' }
      expose :name, documentation: { type: String, desc: '英文' }
      expose :pronounce, documentation: { type: String, desc: '发音' }
      expose :content, documentation: { type: String, desc: '中文' }
    end
  end
end
