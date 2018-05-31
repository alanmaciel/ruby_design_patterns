# -*- coding: utf-8 -*-
class BankAccount

  attr_accessor :balance

  def initialize(account_owner)
    @owner = account_owner
    @balance = 0
  end

  def deposit(amount)
    @balance = @balance + amount
  end

  def withdraw(amount)
    @balance = @balance - amount
  end
end

my_account = BankAccount.new('Alan')
puts(my_account.balance)

class SelfCentered
  def talk_about_me
    puts("Hello I am #{self}")
  end
end

conceited = SelfCentered.new
conceited.talk_about_me

class InterestBearingAccount < BankAccount
  def initialize(owner, rate)
    # @owner = owner
    # @balance = 0
    super(owner)
    @rate = rate
  end

  def deposit_interest
    @balance += @rate * @balance
  end
end


def add_students(*names)
  for student in names
    puts("adding student #{student}")
  end
end

def describe_hero(name, *super_powers)
  puts("Name: #{name}")
  for power in super_powers
    puts("Super power: #{power}")
  end
end

my_account_2 = InterestBearingAccount.new('Veronica', 0.16)
my_account_2.balance = 100
puts(my_account_2.balance)
my_account_2.deposit_interest
puts(my_account_2.balance)

add_students("Eric Emilio", "Ian Alejandro")

describe_hero("Batman")
describe_hero("Flash", "speed")
describe_hero("Superman", "can fly", "x-ray vision", "invulnerable")

module HelloModule
  def say_hello
    puts('Hello out there.')
  end
end

class TryIt
  include HelloModule
end

tryit = TryIt.new
tryit.say_hello

module Chatty
  def say_hi
    puts "Hello, my name is #{name}"
    puts "My job title is #{title}"
    puts "I work in the #{department} department"
  end
end

class Employee
  include Chatty

  def name
    'Fred'
  end

  def title
    'Janitor'
  end

  def department
    'Maintenance'
  end
end

emp = Employee.new
emp.say_hi
