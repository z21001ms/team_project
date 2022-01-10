# == Schema Information
#
# Table name: coordinate_songs
#
#  id            :bigint           not null, primary key
#  coordinate_id :bigint           not null
#  song_id       :bigint           not null
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#
# Indexes
#
#  index_coordinate_songs_on_coordinate_id  (coordinate_id)
#  index_coordinate_songs_on_song_id        (song_id)
#
# Foreign Keys
#
#  fk_rails_...  (coordinate_id => coordinates.id)
#  fk_rails_...  (song_id => songs.id)
#
class CoordinateSong < ApplicationRecord
    belongs_to :coordinate
    belongs_to :song
end
