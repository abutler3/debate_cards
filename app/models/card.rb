class Card < ActiveRecord::Base
  attr_accessible :author, :date, :evidence, :tag, :tag_list
  acts_as_taggable

  validates_presence_of :tag, :evidence

  def self.search(search)
    if search
      find(:all, :conditions => ['evidence @@ ?', search])
    else
      find(:all)
    end
  end
end
