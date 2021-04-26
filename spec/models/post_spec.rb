require 'rails_helper'

RSpec.describe 'Postモデルのテスト', type: :model do
  # 外部キーを参照したい場合は必ずcreateでデータベースに保存する
  let(:user) { FactoryBot.create(:user)}
  let(:genre) { FactoryBot.create(:genre)}
  let!(:post) { FactoryBot.build(:post, user_id: user.id, genre_id: genre.id) }

  describe "投稿を保存する" do
    it "有効な投稿は保存されるか" do
      expect(post).to be_valid
    end
  end

  describe 'バリデーションのテスト' do
    subject { post.valid? }

    context 'titleカラム' do
      it '空欄でないこと' do
        post.title = ''
        is_expected.to eq false
      end
    end

    context 'contentカラム' do
      it '空欄でないこと' do
        post.content = ''
        is_expected.to eq false
      end
    end

    context 'genderカラム' do
      it '空欄でないこと' do
        post.gender = ''
        is_expected.to eq false
      end
    end
  end


  describe 'アソシエーションのテスト' do
    context 'Userモデルとの関係' do
      it 'N:1となっている' do
        expect(Post.reflect_on_association(:user).macro).to eq :belongs_to
      end
    end

    context 'Genreモデルとの関係' do
      it 'N:1となっている' do
        expect(Post.reflect_on_association(:genre).macro).to eq :belongs_to
      end
    end

    context 'Favoriteモデルとの関係' do
      it '1:Nとなっている' do
        expect(Post.reflect_on_association(:favorites).macro).to eq :has_many
      end
    end
  end
end
