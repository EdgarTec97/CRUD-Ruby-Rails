class Image < ApplicationRecord
    mount_uploader :picture, PictureUploader

    validates :description, presence: true, exclusion: { in: %w(www us ca jp),
        message: "%{value} is reserved." }

    belongs_to :user
end
