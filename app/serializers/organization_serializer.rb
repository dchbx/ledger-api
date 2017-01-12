class OrganizationSerializer < ActiveModel::Serializer
  attributes :id, :hbx_id, :legal_name, :dba_name, :dba, :fein, :account_number
end
