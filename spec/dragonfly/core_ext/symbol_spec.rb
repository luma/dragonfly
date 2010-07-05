require File.expand_path('../../../spec_helper', __FILE__)

describe Symbol do
  
  describe "to_method_name" do
    if RUBY_VERSION =~ /^1.8/
      it "should return a string" do
        :hello.to_method_name.should == 'hello'
      end
    else
      it "should return a symbol" do
        :hello.to_method_name.should == :hello
      end
    end
  end
  
end
