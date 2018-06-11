class Cover < ApplicationRecord
  has_attached_file :img,
    :storage => :s3,
    :styles => {
      :normal => "1600x900>",
    },
    :default_url => "missing.png",
    :s3_credentials => {
      :access_key_id => ENV["AWS_ACCES_KEY_ID"],
      :secret_access_key => ENV["AWS_SECRET_ACCESS_KEY"],
      :bucket => ENV["S3_BUCKET_NAME"]
    },
    :s3_region => ENV["AWS_REGION"],
    :path => "covers/:attachment/:id/:style/:filename",
    :url => "s3_domain_url"
  validates_attachment_content_type :img, :content_type => /\Aimage\/.*\Z/
end
