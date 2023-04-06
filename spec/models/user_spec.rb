require 'rails_helper'

RSpec.describe User, type: :model do
  describe "Associations" do
    it { is_expected.to have_many(:screenings) }
    it { is_expected.to have_many(:answers) }
  end
end
