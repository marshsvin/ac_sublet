# == Schema Information
#
# Table name: photos
#
#  id         :integer          not null, primary key
#  image_url  :string
#  listing_id :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Photo < ApplicationRecord
validates :image_url,
          :listing_id,
          presence: true

  belongs_to :listing
end
