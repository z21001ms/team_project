# == Schema Information
#
# Table name: songs
#
#  id         :bigint           not null, primary key
#  platform   :integer          not null
#  url        :string(2048)     not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  video_id   :string           not null
#
class Song < ApplicationRecord
  has_many :coordinate_songs
  has_many :coordinate, through: :coordinate_songs

  def truncate_youtube_url()
      self.video_id = self.url.slice(/v=.+/).slice(2..-1)
  end
end
