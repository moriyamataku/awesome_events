require 'rails_helper'

RSpec.describe Event, :type => :model do
  describe '#created_by?' do
    let(:event) { create(:event) }
    subject { event.created_by?(user) }

    context 'arg is nil ' do
      let(:user) { nil }
      it { should be_falsey }
    end

  end
end
