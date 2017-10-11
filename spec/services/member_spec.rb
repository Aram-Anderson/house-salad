require 'rails_helper'

describe Member do
  it "is instantiated with valid attributes" do
    attrs = {
            id: "D000197",
            first_name: "Diana",
            last_name: "DeGette",
            role: "Representative",
            party: "D",
            seniority: "22",
            district: "1"
            }

    member = Member.new(attrs)
    expect(member.name).to eq("Diana DeGette")
    expect(member.role).to eq("Representative")
    expect(member.party).to eq("D")
    expect(member.district).to eq("1")
  end
end
