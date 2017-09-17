class Resume < ApplicationRecord
  validates_presence_of :content
  mount_uploader :attachment, AttachmentUploader

  belongs_to :user
  belongs_to :job
end
