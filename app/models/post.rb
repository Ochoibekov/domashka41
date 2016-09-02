class Post < ActiveRecord::Base
	belongs_to :user
	has_many :comments, dependent: :destroy
	has_attached_file :image,
  					styles: {medium: '1000x1000>',thumb: '100x100',large: 'original'},
  					default_url: ':style/missing.png'
  validates_attachment_content_type :image,
  					content_type: ['image/jpeg','image/gif','image/png']
end
