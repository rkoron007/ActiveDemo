class Post < ApplicationRecord
    validates :title, presence: true

    validate :ensure_we_have_a_photo

    def ensure_we_have_a_photo
        unless self.photo.attached?
            errors[:photo] << "Must have a Photo Attached"
        end
    end
    has_one_attached :photo
end
