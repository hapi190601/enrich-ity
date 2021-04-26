require 'rails_helper'

RSpec.describe 'Userモデルのテスト', :type => :model do
  let(:user) { FactoryBot.build(:user) }

  describe "保存する" do
    it "会員登録する" do
      expect(user).to be_valid
    end
  end

  describe 'バリデーションのテスト' do
    subject { user.valid? }

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

    context 'prefecture_codeカラム' do
      it '空欄でないこと' do
        user.prefecture_code = ''
        is_expected.to eq false
      end
    end

    context 'municipalityカラム' do
      it '空欄でないこと' do
        user.municipality = ''
        is_expected.to eq false
      end
    end

    context 'postal_codeカラム' do
      it '7文字であること' do
        user.postal_code = '12345678'
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

    context 'Favotiteモデルとの関係' do
      it '1:Nとなっている' do
        expect(User.reflect_on_association(:favorites).macro).to eq :has_many
      end
    end

    context 'Entryモデルとの関係' do
      it '1:Nとなっている' do
        expect(User.reflect_on_association(:entries).macro).to eq :has_many
      end
    end

    context 'Roomモデルとの関係' do
      it '1:Nとなっている' do
        expect(User.reflect_on_association(:rooms).macro).to eq :has_many
      end
    end

    context 'DirectMessageモデルとの関係' do
      it '1:Nとなっている' do
        expect(User.reflect_on_association(:direct_messages).macro).to eq :has_many
      end
    end
  end
end
