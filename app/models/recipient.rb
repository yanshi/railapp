class Recipient < ActiveRecord::Base
  # attr_accessible :title, :body
  belongs_to :newsletter
end
