class Syndic < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates_presence_of :name, :phone, :cpf
  validates_numericality_of :phone, :cpf

  has_one :condominium

  accepts_nested_attributes_for :condominium, allow_destroy: true
end
