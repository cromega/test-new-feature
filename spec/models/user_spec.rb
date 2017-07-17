require "rails_helper"

describe User do
  it "has an address" do
    user = User.new(username: "asd", address: "qwe", postcode: "n78as")
    user.save
    expect(user.id).to_not be_nil
  end

  it "can have multiple addresses" do
    user = User.new(username: "asd")
    user.addresses.create(address: "some street", postcode: "n78sddsdfdf")
    user.addresses.create(address: "some other street", postcode: "n78asd")
    expect(user.addresses.count).to eq 2
  end
end
