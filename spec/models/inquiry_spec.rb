require 'rails_helper'

RSpec.describe 'Inquiryモデルのテスト', :type => :model do
  let(:inquiry) { FactoryBot.build(:inquiry) }

  describe "保存する" do
    it "問い合わせ作成" do
      expect(inquiry).to be_valid
    end
  end

  describe 'バリデーションのテスト' do
    subject { inquiry.valid? }

    context 'nameカラム' do
      it '空欄でないこと' do
        inquiry.name = ''
        is_expected.to eq false
      end
    end

    context 'emailカラム' do
      it '空欄でないこと' do
        inquiry.email = ''
        is_expected.to eq false
      end
    end

    context 'titleカラム' do
      it '空欄でないこと' do
        inquiry.title = ''
        is_expected.to eq false
      end
    end

    context 'contentカラム' do
      it '空欄でないこと' do
        inquiry.content = ''
        is_expected.to eq false
      end
    end
  end
end
