class HomeController < ApplicationController
  def index
    a_string = "a" * 1.megabyte
    b_string = "b" * 1.megabyte
    if a_string == b_string.gsub(/b/, "a")
      @var = a_string + b_string
    end
  end
end
