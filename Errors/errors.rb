def my_method(first)
  #......
end

  begin
    my_method()  # Missing 1 argument
  rescue ArgumentError #Error's class
    puts "No argument was passed!"

  end
