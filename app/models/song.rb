# == Schema Information
#
# Table name: songs
#
#  id         :bigint           not null, primary key
#  platform   :integer          not null
#  url        :string(2048)     not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Song < ApplicationRecord
    has_many :coordinate_songs
    has_many :coordinate, through: :coordinate_songs
end
