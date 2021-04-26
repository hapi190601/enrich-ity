require 'rails_helper'

RSpec.describe 'Favoriteモデルのテスト', :type => :model do
  let(:user) { create(:user) }
  let(:genre) { create(:genre) }
  let(:post) { create(:post, :user_id => user.id, :genre_id => genre.id) }
  let(:favorite) { Favorite.create(:user_id => user.id, :post_id => post.id) }

  describe "保存する" do
    it "お気に入り登録" do
      expect(favorite).to be_valid
    end
  end

  describe 'アソシエーションのテスト' do
    context 'Userモデルとの関係' do
      it 'N:1となっている' do
        expect(Favorite.reflect_on_association(:user).macro).to eq :belongs_to
      end
    end

    context 'Postモデルとの関係' do
      it 'N:1となっている' do
        expect(Favorite.reflect_on_association(:post).macro).to eq :belongs_to
      end
    end
  end
end
