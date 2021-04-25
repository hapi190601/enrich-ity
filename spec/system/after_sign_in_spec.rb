# frozen_string_literal: true

require 'rails_helper'

# describe 'ユーザーログイン後のテスト' do

#   describe 'ヘッダーのテスト: ログインしている場合' do
#     let(:user) { create(:user) }

#     before do
#       visit new_user_session_path
#       fill_in 'user[name]', with: user.name
#       fill_in 'user[password]', with: user.password
#       click_button 'Log in'
#     end

#     context 'ヘッダーの表示を確認' do
#       it 'タイトルが表示される' do
#         expect(page).to have_content 'Bookers'
#       end
#       it 'Homeリンクが表示される: 左上から1番目のリンクが「Home」である' do
#         home_link = find_all('a')[1].native.inner_text
#         expect(home_link).to match(/home/i)
#       end
#       it 'Usersリンクが表示される: 左上から2番目のリンクが「Users」である' do
#         users_link = find_all('a')[2].native.inner_text
#         expect(users_link).to match(/users/i)
#       end
#       it 'Booksリンクが表示される: 左上から3番目のリンクが「Books」である' do
#         books_link = find_all('a')[3].native.inner_text
#         expect(books_link).to match(/books/i)
#       end
#       it 'log outリンクが表示される: 左上から4番目のリンクが「logout」である' do
#         logout_link = find_all('a')[4].native.inner_text
#         expect(logout_link).to match(/logout/i)
#       end
#     end
#   end

# end