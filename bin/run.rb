require_relative '../config/environment'
require_relative '../bin/cli'

cli = CLI.new

cli.greet

# cli.show_menu
# puts "Enter a number corresponding to a menu item: "
# user_input = gets.chomp
# #binding.pry
# while (user_input != "done" )
#   cli.show_menu
#   if user_input == "1"
#     cli.login
#   cli.show_menu
#   elsif user_input == "2"
#     cli.lookup_driver
#   elsif user_input == "3"
#     cli.create_review
#   elsif user_input == "4"
#     cli.list_drivers
#   elsif user_input == "5"
#     cli.list_reviews
#   elsif user_input == "6"
#     cli.update_review
#   elsif user_input == "7"
#     cli.delete_review
#   else
#     cli.done
#     break
#   end
# end







# cli.login
# cli.list_drivers
# cli.lookup_driver
# cli.create_review
# cli.list_reviews
# cli.update_review
# cli.delete_review
# puts "hello world"
