require_relative '../config/environment'
require 'pry'

class CLI

  def initialize
    @passenger = nil
    @driver = nil
  end


  def show_menu
    puts "Please enter a number for each menu item A-F. (Example- A: 1 or B: 2) "
    puts "A. Passenger Login: "
    puts "B. Search for a driver: "
    puts "C. Add a new review: "
    puts "D. List the drivers: "
    puts "E. List the reviews for a driver: "
    puts "F. Update a review: "
    puts "G. Delete a review: "
    puts "H. Type done to exit: "
    user_input = gets.chomp
      if user_input == "a"
        login
      elsif user_input == "b"
        lookup_driver
      elsif user_input == "c"
        create_review
      elsif user_input == "d"
        list_drivers
      elsif user_input == "e"
        list_reviews
      elsif user_input == "f"
        update_review
      elsif user_input == "g"
        delete_review
      else
        done
  end

  def pathway
  puts "Enter a number corresponding to a menu item: "
    end
  end

  def greet
    puts "Welcome to RideShare!: "
    show_menu
  end

  def login
    puts "Please login as a passenger: "
    user_input = gets.chomp
    @passenger = Passenger.all.find_by(name: user_input)
    puts @passenger.name
    show_menu
  end

  def lookup_driver
    puts "Enter a driver name"
    input = gets.chomp
    @driver = Driver.all.find_by(name: input)
    show_menu
  end

  def create_review
    puts "Please write a review: "
    user_input = gets.chomp
    review_1 = Review.create(driver_id: @driver.id, passenger_id: @passenger.id, reviews: user_input)
    show_menu
  end

  def list_drivers
    puts "Retrieve a list of drivers, by entering a driver: "
    user_input = gets.chomp
    driver = Driver.all.each {|dr| puts dr.name}
    show_menu
  end

  def list_reviews
    puts "Retrieve a list of reviews, by entering a driver: "
    user_input = gets.chomp
    num = 1
    kevin = Driver.all.find_by(name: user_input)
    kevin.reviews.each { |review| puts  "#{num}. #{review.reviews}"; num += 1 }
    show_menu
  end

  def update_review
    puts "To update your review: "
    puts "Enter driver id"
    driver_id = gets.chomp
    puts "Enter passenger id"
    passenger_id = gets.chomp
    puts "and enter new review: "
    review = gets.chomp
    myReview = Review.find_by(driver_id: driver_id, passenger_id: passenger_id)
    myReview.update(reviews: review)
    show_menu
  end

  def delete_review
    puts "Enter these fields to delete a review: "
    puts "Enter driver id"
    driver_id = gets.chomp
    puts "Enter passenger id"
    passenger_id = gets.chomp
    review = Review.find_by(driver_id: driver_id, passenger_id: passenger_id)
    review.destroy
    show_menu
  end

  def done
    puts "Please type done, to exit the application: "
  end

end