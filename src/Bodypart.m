classdef Bodypart
    properties
        mass
        length
        com
        inertia
    end
    methods
        function obj = Bodypart(bodyweight,per_mass,length,per_com,per_gyration)
            obj.mass=bodyweight*per_mass/100; % TODO: Was /100
            obj.length=length/1000; % mm -> meter
            obj.com=obj.length/2-abs(per_com/100*obj.length);
            obj.inertia=obj.mass*(per_gyration/100*obj.length)^2;
      end
    end
end
