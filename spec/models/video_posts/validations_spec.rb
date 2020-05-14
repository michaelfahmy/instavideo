require 'rails_helper'

RSpec.describe VideoPost, type: :model do
  describe 'validations' do
    subject(:post) { described_class.new }

    it do
      aggregate_failures do
        expect(post).to validate_presence_of(:provider)
        expect(post).to validate_presence_of(:video_uid)
        expect(post).to validate_presence_of(:title)
      end
    end
  end
end
