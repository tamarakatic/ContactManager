require 'rails_helper'

RSpec.describe EmailAddress, type: :model do
  let(:email_address) do
    EmailAddress.new(address: 'Njegoseva 20', person_id: 1)
  end

  it 'is valid' do
    expect(email_address).to be_valid
  end

  it 'is invalid with invalid address' do
    email_address.address = nil
    expect(email_address).not_to be_valid
  end

  it 'is invalid unless it has a person_id' do
    email_address.person_id = nil
    expect(email_address).not_to be_valid
  end
end
