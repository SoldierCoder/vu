require 'spec_helper'

describe User do
  it 'should get the UID' do
    ed = User.new(ENV['USER1_KEY'], ENV['USER1_SECRET'])
    ed.uid.should == '26954221'
  end
  it 'should get the right screen name' do
    ed.screen_name.should == 'SoldierCoder'
  end
  it 'should get real name' do
    ed.name.should == 'Ed Drain'
  end

      
  end
  
 # pending "add some examples to (or delete) #{__FILE__}"
end
