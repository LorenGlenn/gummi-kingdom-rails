require 'rails_helper'

describe Product do
  it { should validate_presence_of :name }
  it { should validate_presence_of :cost }
  it { should validate_presence_of :image }
  it { should validate_presence_of :country }
  it { should allow_value(".png").for(:image) }
  it { should_not allow_value(".pog").for(:image) }
end
