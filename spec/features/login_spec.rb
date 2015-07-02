require 'rails_helper'

describe 'login ' do
  context 'from top page click "Twitter" ' do
    context 'and login success ' do
      before do
        visit root_path
        click_link 'Twitterでログイン'
      end

      it 'redirect to top page! ' do
        expect(page.current_path).to eq root_path
      end
    end
  end
end