class Post < ApplicationRecord
    validates :title, presence: true
    validates_inclusion_of :category, in: ['Fiction', 'Non-Fiction']
    validates :content, { length: { minimum: 100 } }
end
