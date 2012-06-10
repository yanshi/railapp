class Newsletter < ActiveRecord::Base

 # attr_accessible :body, :created_at, :sent, :subject, :updated_at
 validates :subject,  :presence => true,
                      :length => { :maximum => 255 }
 validates :body, :length => { :maximum => 100000 }


 attr_accessible :subject,
                 :body,
                 :sent,
                 :created_at,
                 :updated_at
 
 belongs_to :user
 has_many :recipients
end
