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
require "test_helper"

class SongTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
