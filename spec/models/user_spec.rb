require 'rails_helper'

RSpec.describe User, type: :model do
  it { should validate_presence_of(:email) }
  it { should validate_uniqueness_of(:email) }
  it { should allow_value('user@example.com').for(:email) }
  it { should_not allow_value('user@example').for(:email) }
end
