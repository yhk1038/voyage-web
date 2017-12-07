class Article < ApplicationRecord
    belongs_to :magazine
    has_many :sections
    # has_many :comments
end
