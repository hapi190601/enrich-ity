require 'rails_helper'

RSpec.describe 'Roomモデルのテスト', type: :model do

  let(:room) { FactoryBot.build(:room) }

  describe "保存する" do
    it "ルーム登録" do
      expect(room).to be_valid
    end
  end

  describe 'バリデーションのテスト' do
    subject { room.valid? }

    context 'nameカラム' do
      it '空欄でないこと' do
        room.name = ''
        is_expected.to eq false
      end
    end
  end

  describe 'アソシエーションのテスト' do
    context 'Userモデルとの関係' do
      it '1:Nとなっている' do
        expect(Room.reflect_on_association(:users).macro).to eq :has_many
      end
    end
    context 'Entryモデルとの関係' do
      it '1:Nとなっている' do
        expect(Room.reflect_on_association(:entries).macro).to eq :has_many
      end
    end
    context 'DirectMessage' do
      it '1:Nとなっている' do
        expect(Room.reflect_on_association(:direct_messages).macro).to eq :has_many
      end
    end
    context 'Notificationモデルとの関係' do
      it '1:Nとなっている' do
        expect(Room.reflect_on_association(:notifications).macro).to eq :has_many
      end
    end
  end

end
