class Post < ApplicationRecord
    validates :title, presence: true
    validates :content, length: { minimum:250 }
    validates :summary, length: { maximum:250 }
    validates :category, inclusion: { in: %w(Fiction Non-Fiction)}
    validates :title, format: {with: /Won't Believe|Secret|Top \d|Guess/}
end
