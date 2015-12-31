class Pet < ActiveRecord::Base
  belongs_to :user
  has_many :documents

  has_attached_file :dog_pic,
        :styles => { :medium => "300x300>", :thumb => "100x100>" },
        :default_url => "images/sal.jpg",
        :path => "/images/:id/:style/:filename"
  validates_attachment_content_type :dog_pic, :content_type => /\Aimage\/.*\Z/

  # By default, every file uploaded will be named 'data'.
  # This renames the file to a timestamp, preventing name collisions.
  # This will also fix browser caching issues for updates
  def rename_dog_pic
    self.dog_pic.instance_write :file_name, "#{Time.now.to_i.to_s}.png"
  end

  before_post_process :rename_dog_pic

has_attached_file :dog_doc,
      :path => "/documents/:id/:filename"
  validates_attachment :dog_doc, :content_type => { :content_type => %w(image/jpeg image/jpg image/png application/pdf application/msword application/vnd.openxmlformats-officedocument.wordprocessingml.document) }

  def rename_dog_doc
    self.dog_doc.instance_write :file_name, "#{Time.now.to_i.to_s}.png"
  end

  before_post_process :rename_dog_doc

end
