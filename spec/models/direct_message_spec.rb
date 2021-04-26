require 'rails_helper'

RSpec.describe 'DirectMessageモデルのテスト', :type => :model do
  let(:user) { FactoryBot.create(:user) }
  let(:room) { FactoryBot.create(:room) }
  let(:direct_message) { FactoryBot.build(:direct_message, :user_id => user.id, :room_id => room.id) }

  describe "メッセージを保存する" do
    it "有効な投稿は保存されるか" do
      expect(direct_message).to be_valid
    end
  end

  describe 'バリデーションのテスト' do
    subject { direct_message.valid? }

    context 'messageカラム' do
      it '空欄でないこと' do
        direct_message.message = ''
        is_expected.to eq false
      end
    end
  end

  describe 'アソシエーションのテスト' do
    context 'Userモデルとの関係' do
      it 'N:1となっている' do
        expect(DirectMessage.reflect_on_association(:user).macro).to eq :belongs_to
      end
    end

    context 'Roomモデルとの関係' do
      it 'N:1となっている' do
        expect(DirectMessage.reflect_on_association(:room).macro).to eq :belongs_to
      end
    end

    context 'Notificationモデルとの関係' do
      it '1:Nとなっている' do
        expect(DirectMessage.reflect_on_association(:notifications).macro).to eq :has_many
      end
    end
  end
end
