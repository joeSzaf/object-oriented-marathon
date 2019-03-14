class Zoo
  attr_reader :cages, :employees
  def initialize(name, season_opening, season_closing)
    @season_opening = season_opening
    @season_closing = season_closing
    @cages = []
    10.times { @cages << Cage.new }
    @employees = []
  end

  def add_employee(employee)
    @employees << employee
  end

  def open?(date)
    date >= @season_opening && date <= @season_closing
  end

  def add_animal(animal)
    # iterate over the cages array
    # if cage is not empty, continue
    # if cage is empty, put in animal and stop search

    @cages.each do |cage|
      if cage.empty?
        cage.animal = animal
        return
      end
    end
    "Your zoo is already at capacity!"
  end
end
