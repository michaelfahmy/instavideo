require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'model' do
    subject(:user) { described_class.new }

    it 'has attributes' do
      aggregate_failures do
        expect(user).to have_db_column(:email).of_type(:string).with_options(null: false)
        expect(user).to have_db_column(:encrypted_password).of_type(:string).with_options(null: false)
        expect(user).to have_db_column(:reset_password_token).of_type(:string)
        expect(user).to have_db_column(:reset_password_sent_at).of_type(:datetime)
        expect(user).to have_db_column(:remember_created_at).of_type(:datetime)
        expect(user).to have_db_column(:sign_in_count).of_type(:integer).with_options(default: 0, null: false)
        expect(user).to have_db_column(:current_sign_in_at).of_type(:datetime)
        expect(user).to have_db_column(:last_sign_in_at).of_type(:datetime)
        expect(user).to have_db_column(:current_sign_in_ip).of_type(:inet)
        expect(user).to have_db_column(:last_sign_in_ip).of_type(:inet)
        expect(user).to have_db_column(:created_at).of_type(:datetime).with_options(null: false)
        expect(user).to have_db_column(:updated_at).of_type(:datetime).with_options(null: false)
      end
    end

    it 'has indexes' do
      aggregate_failures do
        expect(user).to have_db_index(:email)
        expect(user).to have_db_index(:reset_password_token)
      end
    end
  end
end
