require 'rails_helper'

# # ここから書き換えてる
describe 'ユーザログイン前のテスト' do
  describe 'トップ画面のテスト' do
    before do
      visit root_path
    end

    context 'ヘッダー表示内容の確認' do
      it 'URLが正しい' do
        expect(current_path).to eq '/'
      end

      it '検索リンクが表示される: 左上から1番目のリンクが「検索」である' do
        search_link = find_all('a')[1].native.inner_text
        expect(search_link).to match(/検索/)
      end

      it '新規登録リンクが表示される: 左上から7番目のリンクが「新規登録」である' do
        sign_up_link = find_all('a')[7].native.inner_text
        expect(sign_up_link).to match(/新規登録/)
      end

      it 'ゲストログインリンクが表示される: 左上か11番目のリンクが「ゲストログイン」である' do
        guest_sign_in_link = find_all('a')[11].native.inner_text
        expect(guest_sign_in_link).to match(/ゲストログイン/)
      end

      it '検索リンクの内容が正しい' do
        search_link = find_all('a')[1].native.inner_text
        expect(page).to have_link search_link, href: searches_incremental_search_path
      end

      it '新規登録リンクの内容が正しい' do
        sign_up_link = find_all('a')[7].native.inner_text
        expect(page).to have_link sign_up_link, href: new_user_registration_path
      end

      it 'ゲストログインリンクの内容が正しい' do
        guest_sign_in_link= find_all('a')[11].native.inner_text
        expect(page).to have_link guest_sign_in_link, href: users_guest_sign_in_path
      end
    end
  end

  describe 'アバウト画面のテスト' do
    before do
      visit '/homes/about'
    end

    context '表示内容の確認' do
      it 'URLが正しい' do
        expect(current_path).to eq '/homes/about'
      end
    end
  end

  describe 'ユーザ新規登録のテスト' do
    before do
      visit new_user_registration_path
    end

    context '表示内容の確認' do
      it 'URLが正しい' do
        expect(current_path).to eq '/users/sign_up'
      end

      it '「新規登録」と表示される' do
        expect(page).to have_content '新規登録'
      end

      it 'nameフォームが表示される' do
        expect(page).to have_field 'user[name]'
      end

      it 'emailフォームが表示される' do
        expect(page).to have_field 'user[email]'
      end

      it 'passwordフォームが表示される' do
        expect(page).to have_field 'user[password]'
      end

      it 'password_confirmationフォームが表示される' do
        expect(page).to have_field 'user[password_confirmation]'
      end

      it '新規登録ボタンが表示される' do
        expect(page).to have_button '新規登録'
      end
    end

    context '新規登録成功のテスト' do
      before do
        fill_in 'user[name]', with:  Faker::Lorem.characters(number: 10)
        fill_in 'user[name_kana]', with: Faker::Lorem.characters(number: 10)
        fill_in 'user[nickname]', with: Faker::Lorem.characters(number: 10)
        choose 'user_gender_男性'
        # どのセレクトタグを対象にするのか指定
        find("#user_birthday_1i").find("option[value= 1999]").select_option
        find("#user_birthday_2i").find("option[value= 1]").select_option
        find("#user_birthday_3i").find("option[value= 23]").select_option
        find("#user_prefecture_code").find("option[value= 13]").select_option
        fill_in 'user[municipality]', with: Faker::Lorem.characters(number: 5)
        fill_in 'user[postal_code]', with: Faker::Lorem.characters(number: 7)
        fill_in 'user[nearest_station]', with: Faker::Lorem.characters(number: 3)
        fill_in 'user[email]', with: Faker::Internet.email
        fill_in 'user[password]', with: 'password'
        fill_in 'user[password_confirmation]', with: 'password'
      end

      it '正しく新規登録される' do
        expect { click_button '新規登録' }.to change(User.all, :count).by(1)
      end

      it '新規登録後のリダイレクト先が、投稿トップ画面になっている' do
        click_button '新規登録'
        expect(current_path).to eq '/posts/top'
      end
    end
  end

  describe 'ユーザログイン' do
    let(:user) { create(:user) }

    before do
      visit new_user_session_path
    end

    context '表示内容の確認' do
      it 'URLが正しい' do
        expect(current_path).to eq '/users/sign_in'
      end

      it '「ログイン」と表示される' do
        expect(page).to have_content 'ログイン'
      end

      it 'emailフォームが表示される' do
        expect(page).to have_field 'user[email]'
      end

      it 'passwordフォームが表示される' do
        expect(page).to have_field 'user[password]'
      end

      it 'ログインボタンが表示される' do
        expect(page).to have_button 'ログイン'
      end
    end

    context 'ログイン成功のテスト' do
      before do
        fill_in 'user[email]', with: user.email
        fill_in 'user[password]', with: user.password
        click_button 'ログイン'
      end

      it 'ログイン後のリダイレクト先が、投稿トップ画面になっている' do
        expect(current_path).to eq '/posts/top'
      end
    end

    context 'ログイン失敗のテスト' do
      before do
        fill_in 'user[email]', with: ''
        fill_in 'user[password]', with: ''
        click_button 'ログイン'
      end

      it 'ログインに失敗し、ログイン画面にリダイレクトされる' do
        expect(current_path).to eq '/users/sign_in'
      end
    end
  end

  describe 'ユーザーログアウトのテスト' do
    let(:user) { create(:user) }

    before do
      visit new_user_session_path
      fill_in 'user[email]', with: user.email
      fill_in 'user[password]', with: user.password
      click_button 'ログイン', match: :first
      # logout_link = find_all('a')[9].native.inner_text
      # logout_link = logout_link.gsub(/\n/, '').gsub(/\A\s*/, '').gsub(/\s*\Z/, '')
      click_link 'ログアウト', match: :first
    end

    context 'ログアウト機能のテスト' do
      it '正しくログアウトできている: ログアウト後のリダイレクト先においてAbout画面へのリンクが存在する' do
        expect(page).to have_link '', href: '/homes/about'
      end

      it 'ログアウト後のリダイレクト先が、トップになっている' do
        expect(current_path).to eq '/homes/top'
      end
    end
  end

  describe 'ゲストログイン' do
    before do
      visit root_path
    end

    context 'ログイン' do
      it "正しくログインできているか" do
        click_link "ゲストログイン", match: :first
        expect(current_path).to eq '/posts/top'
        expect(page).to have_content '1都3県'
      end
    end
  end
end
