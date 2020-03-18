class Post < ActiveRecord::Base
    validates :title, presence: true
    validates :content, length: {minimum: 100}
    validates :category, inclusion: { in: ["Fiction", "Non-Fiction"],
        message: "Needs to be Fiction or Non-Fiction"}
end
