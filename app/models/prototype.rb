class Prototype < ApplicationRecord

  belongs_to :user
  has_one_attached :image
  has_many :comments, dependent: :destroy

  validates :title, presence: true
  validates :catch_copy, presence: true
  validates :concept, presence: true
  validates :image, presence: true

  class NewAction
    def initialize
      @prototype = Prototype.new
    end
  
    # その他のメソッド定義
  end

end
