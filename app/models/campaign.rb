class Campaign < ActiveRecord::Base
  # attr_accessible :name, :description, :target
  has_many :canned_tweets, :dependent => :destroy
  accepts_nested_attributes_for :canned_tweets, :reject_if => lambda { |a| a[:message].blank? }, :allow_destroy => true
end
