class Book < ActiveRecord::Base
	belongs_to :user
	belongs_to :category
	has_many :reviews

	has_attached_file :book_img, :styles => { :book_index => "325x400#", :book_show => "325x400#" }, :default_url => "/images/:style/missing1.jpg"
  	validates_attachment_content_type :book_img, :content_type => /\Aimage\/.*\Z/
end
