require 'rails_helper'

RSpec.describe User, type: :model do
  context 'associations' do
    it { expect(subject).to have_many(:announces) }
  end
end
