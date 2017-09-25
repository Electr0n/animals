require "rails_helper"

RSpec.describe Clinic, :type => :model do

  describe "Associations:" do

    let(:dv_s39)  {create(:dv_s39)}
    let(:dv_p9)   {create(:dv_p9)}
    let(:podship9){create(:podship9)}
    let(:skrip39) {create(:skrip39)}

    describe 'location' do
      it 'clinic should have only one location' do
        dv_s39.location = podship9
        dv_s39.location = skrip39
        expect(dv_s39.location).to eq(skrip39)
      end
    end
  end

end
