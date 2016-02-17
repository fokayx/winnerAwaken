class Ruwei < ActiveRecord::Base
  validates :name, :email, presence:{message: '欄位不可空白'}
  validates :email, format: {with:/\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, message:'Email 格式錯誤'}
end
