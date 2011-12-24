class Pony < ActiveRecord::Base
  belongs_to :user
  after_initialize :init

    def init
      self.lvl  ||= 0           #will set the default value only if it's nil
      self.health ||= 10 #let's you set a default association
	  self.mood ||= 0
	  self.forme ||= 0
	  self.atk ||= (1+ rand(6))
	  self.spd ||= (1+ rand(6))
	  self.def ||= (1+ rand(6))
	  self.intel ||= (1+ rand(6))
	  #self.exp ||= 0
	  #self.hunger ||= 0
    end
    
end
