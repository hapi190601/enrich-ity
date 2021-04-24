require 'rails_helper'

RSpec.describe 'Userモデルのテスト', type: :model do
  describe 'バリデーションのテスト' do
    subject { user.valid? }

    let(:user) { build(:user) }

    context 'nameカラム' do
      it '空欄でないこと' do
        user.name = ''
        is_expected.to eq false
      end
    end

    context 'name_kanaカラム' do
      it '空欄でないこと' do
        user.name_kana = ''
        is_expected.to eq false
      end
    end

    context 'nicknameカラム' do
      it '空欄でないこと' do
        user.nickname = ''
        is_expected.to eq false
      end
    end

    context 'genderカラム' do
      it '空欄でないこと' do
        user.gender = ''
        is_expected.to eq false
      end
    end

    context 'birthdayカラム' do
      it '空欄でないこと' do
        user.birthday = ''
        is_expected.to eq false
      end
    end

    context 'nearest_stationカラム' do
      it '空欄でないこと' do
        user.nearest_station = ''
        is_expected.to eq false
      end
    end

  end

  describe 'アソシエーションのテスト' do
    context 'Postモデルとの関係' do
      it '1:Nとなっている' do
        expect(User.reflect_on_association(:posts).macro).to eq :has_many
      end
    end
  end
end
