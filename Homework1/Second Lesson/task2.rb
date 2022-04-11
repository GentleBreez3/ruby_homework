class Garage
    SLOTS = 100
    Gara = {}
    @@s = 100

    def initialize name, slot
        @name = name
        @slot = slot
    end

    def in
        # if SLOTS < @slot
        if @@s < @slot
            puts "error!!"
        else
            if Gara.has_key?(@name)
                Gara[@name] +=1
                # Garage::SLOTS = SLOTS - @slot
                @@s = @@s - @slot
            else
                Gara[@name] = 1
                # Garage::SLOTS = SLOTS - @slot
                @@s = @@s - @slot
            end
        end
    end

    def self.total_vehicle
        Gara.each do |k, v|
            puts "The garage has: #{k}: #{v}"
        end
    end

    def self.slot_left
        # puts "The number of slots left in the garage: #{SLOTS}"
        puts "The number of slots left in the garage: #{@@s}"
    end 
end

car = Garage.new "car", 4
bike = Garage.new "bike", 2

car.in
bike.in
bike.in

Garage.total_vehicle
Garage.slot_left