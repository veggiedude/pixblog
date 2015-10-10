class Pin < ActiveRecord::Base
	belongs_to :user
	has_attached_file :image, :styles => {:medium => "300x300>", :thumb => "100x100>"}, :storage => :s3,
    :s3_credentials => "#{Rails.root}/config/aws.yml",
    :bucket => "digitaletchings-pb"
	validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
end


