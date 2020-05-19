require 'rails_helper'

RSpec.describe Announce, type: :model do
  context 'Validations' do
    it { is_expected.to validate_presence_of(:title) }

    it do
      expect(subject).to validate_numericality_of(:price).is_greater_than_or_equal_to(0)
    end

    it { is_expected.to allow_value(false).for(:price) }
  end

  context 'associations' do
    it { expect(subject).to belong_to(:user) }
  end
end
