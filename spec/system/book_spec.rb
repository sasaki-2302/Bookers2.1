# frozen_string_literal: true

require 'rails_helper'

describe '投稿のテスト' do
  let!(:book) { create(:book,title:'title',body:'body') }
  describe 'トップ画面(root_path)のテスト' do
    before do
      visit root_path
    end
    it 'トップ画面(root_path)に「Bookers」が表示されているか' do
      expect(page).to have_contact 'Bookers'
    end
    it 'root_pathが"/"であるか' do
      expect(current_path).to eq("/")
    end
  end
end