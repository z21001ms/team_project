require 'rails_helper'

RSpec.describe SongController, type: :controller do
  describe "#index" do
    it "登録されている楽曲情報を表示する" do
      get :index
      expect(response).to be_successful
    end
  end
end
