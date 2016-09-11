class Farm < ApplicationRecord
  before_save do
    self.genre.gsub!(/[\[\]\"]/, "") if attribute_present?("genre")
  end

  has_attached_file :image, styles: { medium: "600x400>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
end
