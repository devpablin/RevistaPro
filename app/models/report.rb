class Report < ApplicationRecord
  has_attached_file :imgcover, :styles => { :normal => "1024x576>", :thumb => "500x500#" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :imgcover, :content_type => /\Aimage\/.*\Z/
end
