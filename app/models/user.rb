class User < ActiveRecord::Base
	belongs_to :usertype

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  validates :email, format: { :with =>/\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i , :message => " Invalido" }
  validates :Nombre,presence: true
  validates :Apellido,presence: true
  validates :Rut, rut: true , uniqueness: {case_sensitive: false ,message: "ya esta registrado"}
  validates :Direccion,presence: true
  validates :Telefono,presence: true
  validates :Fonoalt,presence: true


  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable


end
