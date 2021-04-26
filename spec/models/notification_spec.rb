require 'rails_helper'

RSpec.describe 'Notificationモデルのテスト', type: :model do
  let(:visitor) { FactoryBot.create(:user) }
  let(:visited) { FactoryBot.create(:user) }
  let(:room) { FactoryBot.create(:room) }
  let(:direct_message) { FactoryBot.create(:direct_message, user_id: visitor.id, room_id: room.id) }
  let(:notification) { FactoryBot.build(:notification, visitor_id: visitor.id, visited_id: visited.id, room_id: room.id, direct_message_id: direct_message.id) }

  describe "保存する" do
    it "通知作成" do
      expect(notification).to be_valid
    end
  end

  describe 'バリデーションのテスト' do
    subject { notification.valid? }

    context 'actionカラム' do
      it '空欄でないこと' do
        notification.action = ''
        is_expected.to eq false
      end
    end
  end

  describe 'アソシエーションのテスト' do
    context 'DirectMessageモデルとの関係' do
      it 'N:1となっている' do
        expect(Notification.reflect_on_association(:direct_message).macro).to eq :belongs_to
      end
    end

    context 'Roomモデルとの関係' do
      it 'N:1となっている' do
        expect(Notification.reflect_on_association(:room).macro).to eq :belongs_to
      end
    end
  end

end
