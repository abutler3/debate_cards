class Card < ActiveRecord::Base
  attr_accessible :author, :date, :evidence, :tag
end
