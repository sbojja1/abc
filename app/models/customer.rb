class Customer < ActiveRecord::Base
    has_many :orders
    public def name_with_id
        "#{name}  (#{id})"
    end
end
