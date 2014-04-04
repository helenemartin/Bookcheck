
require 'date'

class Library

  def loan
    puts "2 weeks loan only"
    results = {}
    File.readlines("checkout.txt").each do |line|
      borrower_details = line.split("-")
      results = results.merge!(name: borrower_details[0])
      overdue(borrower_details[2])
    end 
  end


  def overdue(date)
    a_date = DateTime.now
    b_date = Date.parse(date)
    if ( a_date - b_date).to_i > 15 
      puts "This item is overdue"
    else
      puts "this item is on loan"
    end
  end

end

Library.new.loan



