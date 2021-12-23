class Role < ActiveRecord::Base
    has_many :auditions

    def actors
        self.auditions.pluck(:actor)
    end

    def locations
        self.auditions.pluck(:location)
    end

    def self.lead
        self.auditions.find_by "true", :hired
    end
end