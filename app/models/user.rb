class User < ActiveRecord::Base


  validates :name,  :presence => true,
                    :length => { :minimum => 5 }
					
	has_many :ponies, :dependent => :destroy			
end