class HomeController < ApplicationController
  def index
    puts 'a' * ENV['MEGABYTES_OF_OUTPUT_PER_REQUEST'].to_i.megabytes
    a_string = "a" * 10.megabyte
    b_string = "b" * 10.megabyte
    if a_string == b_string.gsub(/b/, "a")
      @var = a_string + b_string
    end
  end
end
