# frozen_string_literal: true

require 'rails_helper'

describe 'ユーザログイン後のテスト' do
  let(:user) { create(:user) }
  let!(:other_user) { create(:user) }
  let!(:genre) { create(:genre) }
  let!(:other_genre) { create(:genre) }
  let!(:post) { create(:post, :user_id => user.id, :genre_id => genre.id) }
  let!(:other_post) { create(:post, :user_id => other_user.id, :genre_id => other_genre.id) }

  before do
    visit new_user_session_path
    fill_in 'user[email]', :with => user.email
    fill_in 'user[password]', :with => user.password
    click_button 'ログイン'
  end

  describe 'ヘッダーのテスト: ログインしている場合' do
    context 'リンクの内容を確認' do
      subject { current_path }

      it 'マイページを押すと、ユーザ一覧画面に遷移する' do
        user_link = find_all('a')[1].native.inner_text
        user_link = user_link.gsub(/\n/, '').gsub(/\A\s*/, '').gsub(/\s*\Z/, '')
        click_link user_link, :match => :first
        is_expected.to eq "/users/#{user.id}"
      end

      it '詳細検索を押すと、詳細検索画面に遷移する' do
        search_link = find_all('a')[3].native.inner_text
        search_link = search_link.gsub(/\n/, '').gsub(/\A\s*/, '').gsub(/\s*\Z/, '')
        click_link search_link, :match => :first
        is_expected.to eq '/searches/search'
      end

      it '新規投稿を押すと、新規投稿画面に遷移する' do
        post_new_link = find_all('a')[5].native.inner_text
        post_new_link = post_new_link.gsub(/\n/, '').gsub(/\A\s*/, '').gsub(/\s*\Z/, '')
        click_link post_new_link, :match => :first
        is_expected.to eq '/posts/new'
      end
    end
  end

  describe '投稿一覧画面のテスト' do
    before do
      visit posts_path
    end

    context '表示内容の確認' do
      it 'URLが正しい' do
        expect(current_path).to eq '/posts'
      end

      it '投稿詳細へのリンクが表示される' do
        expect(page).to have_link '', :href => post_path(post.id)
        expect(page).to have_link '', :href => post_path(other_post.id)
      end

      it '自分の投稿と他人の投稿のタイトルが表示されている' do
        expect(page).to have_content post.title
        expect(page).to have_content other_post.title
      end

      it '自分の投稿と他人の投稿のジャンルが表示される' do
        expect(page).to have_content post.genre.name
        expect(page).to have_content other_post.genre.name
      end
    end

    context '新規投稿のテスト' do
      before do
        visit posts_new_path
        fill_in 'post[title]', match: :first, :with => Faker::Lorem.characters(:number => 4)
        fill_in 'post[content]', :with => Faker::Lorem.characters(:number => 20)
        find("#post_genre_id").find("option[value= 1]").select_option
        choose 'post_gender_男性'
        choose 'post_option_0'
      end

      it '自分の新しい投稿が正しく保存される' do
        expect { click_button '投稿する' }.to change(user.posts, :count).by(1)
      end

      it 'リダイレクト先が、保存できた投稿の詳細画面になっている' do
        click_button '投稿する'
        expect(current_path).to eq "/posts/#{Post.last.id}"
      end
    end
  end

  describe '自分の投稿詳細画面のテスト' do
    before do
      visit post_path(post.id)
    end

    context '表示内容の確認' do
      it 'URLが正しい' do
        expect(current_path).to eq "/posts/#{post.id}"
      end

      it '「自身の投稿です」と表示される' do
        expect(page).to have_content '自身の投稿です'
      end

      it '投稿のタイトルが表示される' do
        expect(page).to have_content post.title
      end

      it '投稿の本文が表示される' do
        expect(page).to have_content post.content
      end

      it '投稿の編集リンクが表示される' do
        expect(page).to have_link '編集する', :href => edit_post_path(post.id)
      end

      it '投稿の削除リンクが表示される' do
        expect(page).to have_link '削除する', :href => post_path(post.id)
      end
    end

    context '編集リンクのテスト' do
      it '編集画面に遷移する' do
        click_link '編集する'
        expect(current_path).to eq "/posts/#{post.id}/edit"
      end
    end
  end

  describe "他人の投稿詳細関連" do
    context '他人の投稿詳細画面のテスト' do
      before do
        visit post_path(other_post.id)
      end

      it "お気に入り追加ボタンが表示されるか" do
        expect(page).to have_link 'お気に入り追加', :href => post_favorites_path(other_post.id)
      end

      it "チャットをするボタンが表示されるか" do
        expect(page).to have_button 'チャットをする'
      end

      it "他人の詳細ページへのボタンが表示されるか" do
        expect(page).to have_link :href => user_path(other_post.user.id)
      end

      it "お気に入り追加ボタンを押した後はお気に入り削除ボタンに変わる" do
        click_link "お気に入り追加"
        expect(page).to have_link "お気に入り削除", :href => post_favorites_path(other_post.id)
      end

      it "チャットをするボタンを一度押すとそれ以降はチャットページへに変わる" do
        click_button "チャットをする"
        visit user_path(other_user.id)
        expect(page).to have_link "チャットページへ"
      end
    end
  end

  describe '自分の投稿編集画面のテスト' do
    before do
      visit edit_post_path(post.id)
    end

    context '表示の確認' do
      it 'URLが正しい' do
        expect(current_path).to eq "/posts/#{post.id}/edit"
      end

      it '「投稿編集フォーム」と表示される' do
        expect(page).to have_content '投稿編集フォーム'
      end

      it 'タイトル編集フォームが表示される' do
        expect(page).to have_field 'post[title]', :with => post.title
      end

      it '本文編集フォームが表示される' do
        expect(page).to have_field 'post[content]', :with => post.content
      end

      it '編集するボタンが表示される' do
        expect(page).to have_button '編集する'
      end
    end

    context '編集成功のテスト' do
      before do
        @post_old_title = post.title
        @post_old_content = post.content
        fill_in 'post[title]', match: :first, :with => Faker::Lorem.characters(:number => 4)
        fill_in 'post[content]', :with => Faker::Lorem.characters(:number => 19)
        click_button '編集する'
      end

      it 'タイトルが正しく更新される' do
        expect(post.reload.title).not_to eq @post_old_title
      end

      it '本文が正しく更新される' do
        expect(post.reload.content).not_to eq @post_old_content
      end

      it 'リダイレクト先が、編集した投稿の詳細画面になっている' do
        expect(current_path).to eq "/posts/#{post.id}"
        expect(page).to have_content '自身の投稿です'
      end
    end
  end

  describe 'マイページのテスト' do
    before do
      visit user_path(user.id)
    end

    context '表示の確認' do
      it 'URLが正しい' do
        expect(current_path).to eq "/users/#{user.id}"
      end

      it "会員情報が表示される" do
        expect(page).to have_content user.nickname
        expect(page).to have_content user.gender
        expect(page).to have_content user.nearest_station
      end

      it '会員情報編集ボタンがある' do
        expect(page).to have_link '会員情報編集', :href => edit_user_path(user.id)
      end

      it 'お気に入り一覧ボタンがある' do
        expect(page).to have_link 'お気に入り一覧', :href => favorites_users_path
      end
    end
  end

  describe '自分のユーザ情報編集画面のテスト' do
    before do
      visit edit_user_path(user.id)
    end

    context '表示の確認' do
      it 'URLが正しい' do
        expect(current_path).to eq "/users/#{user.id}/edit"
      end

      it '名前編集フォームに自分の名前が表示される' do
        expect(page).to have_field 'user[name]', :with => user.name
      end

      it 'ニックネーム編集フォームに自分のニックネームが表示される' do
        expect(page).to have_field 'user[nickname]', :with => user.nickname
      end

      it '編集内容を保存するボタンが表示される' do
        expect(page).to have_button '編集内容を保存する'
      end

      it '退会するボタンが表示される' do
        expect(page).to have_link '退会する', :href => users_withdraw_path
      end
    end

    context '編集成功のテスト' do
      before do
        @user_old_nickname = user.nickname
        fill_in 'user[nickname]', :with => Faker::Lorem.characters(:number => 1)
        click_button '編集内容を保存する'
      end

      it 'ニックネームが正しく更新される' do
        expect(user.reload.nickname).not_to eq @user_old_nickname
      end

      it 'リダイレクト先が、自分のユーザ詳細画面になっている' do
        expect(current_path).to eq "/users/#{user.id}"
      end
    end

    context "他人の編集画面のアクセス権限" do
      it "他人の会員情報編集ページにはアクセスできずトップにリダイレクトする" do
        visit edit_user_path(other_user.id)
        expect(current_path).to eq '/'
        expect(page).to have_content "他ユーザーの編集はできません。"
      end

      it "他人の投稿編集ページにはアクセスできずトップにリダイレクトする" do
        visit edit_post_path(other_post.id)
        expect(current_path).to eq '/'
        expect(page).to have_content "他ユーザーの投稿編集はできません。"
      end
    end
  end
end
