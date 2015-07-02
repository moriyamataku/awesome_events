require 'rails_helper'

describe 'join event ', js: true do
  let!(:event) { create :event }
  context 'click "JOIN" button ' do
    before do
      visit root_path
      click_link 'Twitterでログイン'
      visit event_path(event)
      click_on '参加する'
    end

    it 'modal dialog with input comment ' do
      expect(page.find('#createTicket')).to be_visible
    end

    context 'and input comment and send button ' do
      before do
        fill_in 'ticket_comment', with: '参加します'
        click_button '送信'
      end

      it 'you join this event ' do
        expect(page).to have_content('このイベントに参加表明しました')
      end

      it 'list your name  ' do
        expect(page).to have_content('@netwillnet')
      end
    end
  end
end