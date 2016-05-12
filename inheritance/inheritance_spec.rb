require_relative 'car'
require_relative 'bus'
require_relative 'motorbike'


describe Car, { car: true } do 
  let(:car) { Car.new(color: 'Blue') }

    it 'it has 4 wheels' do
      expect(car.wheels).to eq 4
    end

    it 'it has a color' do
      expect(car.color).to eq 'Blue'
    end

    it 'has no status yet' do 
      expect(car.status).to eq nil 
    end 
    
    it 'the status becomes driving' do 
        car.drive
        expect(car.status).to eq :driving
    end
   
    it 'the status becomes stopped after brake is pulled' do 
      car.brake
      expect(car.status).to eq :stopped
    end 

    it 'returns a true or false if the car needs gas' do
      expect(car.needs_gas?).to eq(true).or(eq(false))
    end
end 
 
describe Bus , { bus: true } do
  let(:bus) { Bus.new(color: 'Pink', wheels: 8, num_seats: 20, fare: 1.50) }

    it 'it has 8 wheels' do
      expect(bus.wheels).to eq 8
    end

    it 'it has a color' do
      expect(bus.color).to eq 'Pink'
    end

    it 'has 20 seats ' do 
      expect(bus.num_seats).to eq 20 
    end 

    it 'the fare is $1.50' do 
      expect(bus.fare).to eq 1.50 
    end 

    it 'has 0 passengers ' do 
      expect(bus.passengers).to eq 0 
    end 

    it 'the status becomes driving' do 
      bus.drive
      expect(bus.status).to eq :driving
    end

    it 'the status becomes brake if stop requested' do 
      bus.drive
      bus.stop_requested?
      expect(bus.status).to eq :stopped 
    end 
   
    it 'the status becomes stopped' do 
      bus.brake
      expect(bus.status).to eq :stopped
    end 

    it 'releases a statement if at full capacity' do
        21.times do 
          bus.admit_passenger
        end 
          expect(bus.admit_passenger).to eq 'Full capacity!'
    end

    it 'adds passengers to the bus if there is room' do
      bus.admit_passenger
      expect(bus.passengers).to eq 1
    end

  it 'returns a boolean if the bus needs to stop' do
    bus.stop_requested?
    expect(bus.status).to eq :stopped
  end

  it 'returns a boolean if the bus needs gas' do
      expect(bus.needs_gas?).to eq(true).or(eq(false))
    end
end 
 

describe MotorBike, {motorbike: true } do
  let(:motorbike) { MotorBike.new(color: 'Black') }

    it 'it has 2 wheels' do
      expect(motorbike.wheels).to eq 2
    end

    it 'it has a color' do
      expect(motorbike.color).to eq 'Black'
    end

    it 'has no status yet' do 
      expect(motorbike.status).to eq nil 
    end 

    it 'the status becomes driving' do 
      motorbike.drive
      expect(motorbike.status).to eq :driving
    end

    it 'the speed becomes fast' do 
      motorbike.drive
      expect(motorbike.speed).to eq :fast
    end
   

  it 'returns a boolean if the motorbike needs gas' do
      expect(motorbike.needs_gas?).to eq(true).or(eq(false))
  end 

  it 'weaves through traffic and drives like a crazy person' do
      motorbike.weave_through_traffic
        expect(motorbike.status).to eq :driving_like_a_crazy_person
    end
end 
