def example_of(description, action)
  puts "---Example of #{description}---"
  action.call
  puts "---End of example---"
end
