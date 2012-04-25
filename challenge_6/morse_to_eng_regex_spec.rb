require 'rubygems'
require 'rspec'
require 'pry'

require File.join(File.dirname(__FILE__), 'morse_to_eng_regex')


describe "morse_to_eng" do
  it "should be true" do
    morse_to_eng_regex(".... . .-.. .--.   -- .   --- ..- -   --- ..-.   - .... .. ...   .-- . .-.. .-..").should == "HELP ME OUT OF THIS WELL"
  end  
end
