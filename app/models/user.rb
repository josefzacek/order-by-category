class User < ActiveRecord::Base
  attr_accessible :age, :name, :occupation

  def self.tag(tag)
    if tag
      find(:all, :conditions => ['occupation = ?', tag])
    else
      find(:all)
    end
  end
end
