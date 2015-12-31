class Document < ActiveRecord::Base
  belongs_to :pet

    has_attached_file :dog_doc,
        :styles => { :medium => "300x300>", :thumb => "100x100>" },
        :path => "/documents/:id/:style/:filename"
  validates_attachment :dog_doc, content_type: { content_type: "application/pdf" }

  # By default, every file uploaded will be named 'data'.
  # This renames the file to a timestamp, preventing name collisions.
  # This will also fix browser caching issues for updates
  def rename_dog_doc
    self.dog_doc.instance_write :file_name, "#{Time.now.to_i.to_s}.png"
  end

  before_post_process :rename_dog_doc

end
