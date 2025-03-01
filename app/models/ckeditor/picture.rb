class Ckeditor::Picture < Ckeditor::Asset
  has_attached_file :data,
                    url: '/ckeditor_assets/pictures/:id/:style_:basename.:extension',
                    path: ':rails_root/public/ckeditor_assets/pictures/:id/:style_:basename.:extension',
                    styles: { content: '800>', thumb: '118x100#' },
                    :storage => :s3,
                    :s3_credentials => {
                      :access_key_id => ENV["AWS_ACCES_KEY_ID"],
                      :secret_access_key => ENV["AWS_SECRET_ACCESS_KEY"],
                      :bucket => ENV["S3_BUCKET_NAME"]
                    },
                    :s3_region => ENV["AWS_REGION"]

  validates_attachment_presence :data
  validates_attachment_size :data, less_than: 2.megabytes
  validates_attachment_content_type :data, content_type: /\Aimage/

  def url_content
    url(:content)
  end
end
