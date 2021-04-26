require 'rails_helper'

RSpec.describe 'Entryモデルのテスト', :type => :model do
  let(:user) { create(:user) }
  let(:room) { create(:room) }
  let(:entry) { Entry.create(:user_id => user.id, :room_id => room.id) }

  describe "保存する" do
    it "エントリー" do
      expect(entry).to be_valid
    end
  end

  describe 'アソシエーションのテスト' do
    context 'Userモデルとの関係' do
      it 'N:1となっている' do
        expect(Entry.reflect_on_association(:user).macro).to eq :belongs_to
      end
    end
  end

  describe 'アソシエーションのテスト' do
    context 'Roomモデルとの関係' do
      it 'N:1となっている' do
        expect(Entry.reflect_on_association(:room).macro).to eq :belongs_to
      end
    end
  end
end
