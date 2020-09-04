require 'rails_helper'

RSpec.describe Account, type: :model do
  it "is valid with valid attributes" do
    expect(Account.new(id: 1, email: "testemail@email.com", password: "123456", created_at: nil, updated_at: nil, username: "testuser")).to be_valid
  end
end
