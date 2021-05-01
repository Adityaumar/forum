class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :forum_threads
  has_many :forum_posts 

  enum level: {member: 0, admin: 1} #jadi fungsi enum ini adalah jika satu level di isi dengan angka 0/1 maka ia tidak menampilkan suatu nilai tetapi variabel dari isi tersebut
end
