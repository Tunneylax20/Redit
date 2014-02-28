require 'spec_helper'

describe Article do
  it { should validate_presence_of :url }
  it { should validate_uniqueness_of :url }

  it { should belong_to :user }
  
end