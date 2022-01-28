# frozen_string_literal: true

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
require 'rails_helper'

RSpec.describe Song, type: :model do
  it 'Youtube URLからvideo_id切り出し' do
    url = 'https://www.youtube.com/watch?v=dzzNo_Xj4Zg'
    song = Song.new(url: url)
    song.truncate_youtube_url()
    expect(song.video_id).to eq 'dzzNo_Xj4Zg'
  end
end
