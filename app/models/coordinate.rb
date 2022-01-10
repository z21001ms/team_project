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
    has_many :coordinate_songs
    has_many :song, through: :coordinate_songs
    # Config for geocoder
    geocoded_by latitude: :latitude, longitude: :longitude
end
