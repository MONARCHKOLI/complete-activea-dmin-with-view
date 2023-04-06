require 'rails_helper'

RSpec.describe Screening, type: :model do
  describe "Associations" do
    it { is_expected.to have_many(:questions) }
    it { is_expected.to have_many(:answers) }
    it { is_expected.to belong_to(:user).optional }
  end

  describe "Validations" do
    it { is_expected.to validate_uniqueness_of(:screening_type) }
    it { is_expected.to validate_presence_of(:screening_type) }
  end
end
