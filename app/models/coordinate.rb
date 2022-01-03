# == Schema Information
#
# Table name: coordinates
#
#  id         :bigint           not null, primary key
#  latitude   :float            not null
#  longitude  :float            not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Coordinate < ApplicationRecord
    # Config for geocoder
    geocoded_by latitude: :latitude, longitude: :longitude
end
