require 'rails_helper'

RSpec.describe 'Genreモデルのテスト', :type => :model do
  let(:genre) { FactoryBot.build(:genre) }

  describe "保存する" do
    it "ジャンル登録" do
      expect(genre).to be_valid
    end
  end

  describe 'バリデーションのテスト' do
    subject { genre.valid? }

    context 'nameカラム' do
      it '空欄でないこと' do
        genre.name = ''
        is_expected.to eq false
      end
    end
  end

  describe 'アソシエーションのテスト' do
    context 'Postモデルとの関係' do
      it '1:Nとなっている' do
        expect(Genre.reflect_on_association(:posts).macro).to eq :has_many
      end
    end
  end
end
