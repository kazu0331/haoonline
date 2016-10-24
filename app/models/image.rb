class Image < ActiveRecord::Base
  belongs_to :product
  enum status: %i(main sub)
  mount_uploader :image, ImageUploader
end
