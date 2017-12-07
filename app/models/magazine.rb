class Magazine < ApplicationRecord
    has_many :m_configs
    has_many :articles
end
