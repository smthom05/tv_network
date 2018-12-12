require 'pry'

class Network

  attr_reader :name,
              :shows


  def initialize(name)
    @name = name
    @shows = []
  end

  def add_show(show)
    @shows << show
  end

  def highest_paid_actor

  end

  def highest_paid_actor
    current_highest_salary = 0
    @shows.each do |show|
      show.characters.each do |character|
        if current_highest_salary < character.salary
          current_highest_salary = character.salary
        else
          current_highest_salary
        end
      end
    end

    @shows.each do |show|
      show.characters.each do |character|
        if character.salary == current_highest_salary
          return character.actor
        end
      end
    end
  end

  def payroll
    salaries = []
    actors = []

    @shows.each do |show|
      show.characters.each do |character|
        salaries << character.salary
      end
    end

    @shows.each do |show|
      show.characters.each do |character|
        actors << character.actor
      end
    end
    actors_and_salaries = actors.zip(salaries)
    payroll = {}
    actors_and_salaries.each do |actor, salary|
      payroll[actor] = salary
    end
    return payroll
    # actors_and_salaries.each do |actor_and_salary|
    # binding.pry
    # actors_and_salaries.group_by { |salary| }
    # end
  end
end
