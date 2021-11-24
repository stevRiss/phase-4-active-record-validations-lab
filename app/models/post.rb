class Post < ApplicationRecord
    validates :title, presence: true
    validates :content, length: {minimum: 250}
    validates :summary, length: {maximum: 250}
    validate :forbidden
        def forbidden(post)
            if post.title == "True Facts"
                errors.add(:title, "Not allowed :D")
            

            end

        end


end
