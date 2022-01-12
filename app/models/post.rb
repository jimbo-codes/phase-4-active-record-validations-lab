class Post < ApplicationRecord
    validates :title, presence: true
    validates :content, length: { minimum: 250 }
    validates :summary, length: { maximum: 250 }
    validates :category, inclusion: { in: ["Fiction", "Non-Fiction"]}
    validate :allow_title

    def allow_title
        # title

        if title=="True Facts"
            errors.add(:title, "Title cannot be true facts")
        end
    end
end
