class Role < ApplicationRecord
has_many :roles_screen_masters, dependent: :destroy
has_many :screen_masters, :through => :roles_screen_masters
has_and_belongs_to_many :users, :join_table => :users_roles


belongs_to :resource,
           :polymorphic => true,
           :optional => true


validates :resource_type,
          :inclusion => { :in => Rolify.resource_types },
          :allow_nil => true

scopify
end
