class PostComment < ApplicationRecord
    # Associate to another models
    belongs_to :user
    belongs_to :post_image
end
