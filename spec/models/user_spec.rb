require "rails_helper"

describe User do
  it "has an address" do
    user = User.new(username: "asd", address: "qwe", postcode: "n78as")
    user.save
    expect(user.id).to_not be_nil
  end
end
