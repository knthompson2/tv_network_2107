class Show
  attr_reader :name, :creator, :characters, :salary

  def initialize(name, creator, characters)
    @name = name
    @creator = creator
    @characters = characters
    @salary = 0
  end

  def total_salary
    array_of_salaries = @characters.map do |character|
      character.salary
    end
    array_of_salaries.inject(:+)
  end

  def highest_paid_actor
    highest_paid_actor = @characters.sort_by do |character|
      character.salary
    end
    highest_paid_actor.last.actor
  end

  def actors
    all_actors = @characters.map do |character|
      character.actor
    end
  end

end
