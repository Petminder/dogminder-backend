class Document < ActiveRecord::Base
  belongs_to :pets

 has_attached_file :dog_doc,
        :styles => { :medium => "300x300>", :thumb => "100x100>" }
  validates_attachment_content_type :file, :content_type => ["application/pdf","application/vnd.ms-excel","application/vnd.openxmlformats-officedocument.spreadsheetml.sheet","application/msword","application/vnd.openxmlformats-officedocument.wordprocessingml.document","text/plain"]

  # By default, every file uploaded will be named 'data'.
  # This renames the file to a timestamp, preventing name collisions.
  # This will also fix browser caching issues for updates
  def rename_dog_pic
    self.dog_doc.instance_write :file_name, "#{Time.now.to_i.to_s}"
  end

  before_post_process :rename_dog_doc
end
