class Card < ActiveRecord::Base
  attr_accessible :author, :date, :evidence, :tag

  validates_presence_of :tag, :evidence

  def self.search(search)
    if search
      find(:all, :conditions => ['evidence @@ ?', search])
    else
      find(:all)
    end
  end
end
