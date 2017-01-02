class EmployerSerializer < ActiveModel::Serializer
  attributes :id, :hbx_id, :legal_name, :dba, :fein, :is_active, :user
end
