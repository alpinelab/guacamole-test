class HomeController < ApplicationController
  def index
    (1024*ENV['MEGABYTES_OF_OUTPUT_PER_REQUEST'].to_i).times do
      puts 'a' * 1024
    end
    render text: 'OK'
  end
end
