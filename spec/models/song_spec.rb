require 'rails_helper'

RSpec.describe Song, type: :model do
  it "Youtube URLからvideo_id切り出し" do
    url = "https://www.youtube.com/watch?v=dzzNo_Xj4Zg"
    song = Song.new(url: url)
    song.truncate_youtube_url()
    expect(song.video_id).to eq "dzzNo_Xj4Zg";
  end
end