class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true
  def self.search(search)
    if search
          Book.where(['book_title LIKE ?', "%#{search}%"])
    else
          Book.all #全て表示。
    end
  end

end
