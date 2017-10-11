require 'rails_helper'

describe ProPublicaService do
  context "class methods" do
    context "initialize" do
      it "exists" do
        expect(ProPublicaService.new).to be_a ProPublicaService
      end
    end
  end

  context "instance methods" do
    context "#filter_by_state(state)" do
      let(:raw_searchs) { ProPublicaService.new.filter_by_state("CO") }
      let(:raw_search) { raw_searchs.first }
      it "returns an array of hashes with proper structure" do
        VCR.use_cassette("filter_by_state") do
          expect(raw_searchs.count).to eq(7)
          expect(raw_search).to be_a Hash
          expect(raw_search).to have_key :role
          expect(raw_search).to have_key :party
          expect(raw_search).to have_key :district
        end
      end
    end
  end
end
