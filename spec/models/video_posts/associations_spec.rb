require 'rails_helper'

RSpec.describe VideoPost, type: :model do
  describe 'associations' do
    subject(:post) { described_class.new }

    it do
      aggregate_failures do
        expect(post).to belong_to(:user)
      end
    end
  end
end
