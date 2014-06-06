require 'spec_helper'

describe Twit do
  it { should ensure_length_of(:content).is_at_most(140) }
end