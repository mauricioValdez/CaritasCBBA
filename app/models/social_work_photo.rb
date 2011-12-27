class SocialWorkPhoto < ActiveRecord::Base
  belongs_to :social_work
  has_attached_file :data
  before_post_process :normalize_file_name

  validates_attachment_size :data, :less_than => 1000.kilobytes, :message => 'las imagenes no puede tener un tamaño mayor a 1 MB'
  validates_attachment_content_type :data, :content_type => ['image/jpeg', 'image/png']
  
  private
  def normalize_file_name
    self.instance_variable_get(:@_paperclip_attachments).keys.each do |attachment|
      attachment_file_name = (attachment.to_s + '_file_name').to_sym
      if self.send(attachment_file_name)
        self.send(attachment).instance_write(:file_name, self.send(attachment_file_name).gsub(/ /,'_')) 
      end
    end
  end
end
