class Card < ActiveRecord::Base
  attr_accessible :author, :date, :evidence, :tag

  validates_presence_of :tag, :evidence
end
