require 'rexml/document'
require 'date'

puts 'Please enter item you spent the money on'
expense_item = STDIN.gets.chomp

puts 'How much did you spend?'
expense_amount = STDIN.gets.chomp

puts 'When did you spent it?'
puts 'Please input date in the format of DD.MM.YYYY or leave it blank if you spent money today'

date_input = STDIN.gets.chomp
expense_date = nil

if date_input == ''
  expense_date = Date.today
else
  expense_date = Date.parse(date_input)
end

puts 'What is the category for the expense?'
expense_category = STDIN.gets.chomp

current_path = File.dirname(__FILE__)
file_name = current_path + '/my_expenses.xml'

abort 'File not found' unless File.exists? file_name

# don't forget to specify that we need to read the file in UTF-8 encoding
file = File.new(file_name, 'r:UTF-8')
doc = REXML::Document.new(file)
file.close

# save root tag
expenses = doc.elements.find('expenses').first

# add new expense element with the following attributes
new_expense = expenses.add_element 'expense', {
  'date' => expense_date.to_s,
  'category' => expense_category,
  'amount' => expense_amount
}

# don't forget to add text to newly created expense element
new_expense.text = expense_item

# finally creating the updated xml file
file = File.new(file_name, 'w:UTF-8')

# write the updated file
# write method takes two args: the file and number of spaces in front of each line
doc.write(file)

file.close

puts 'Expense was added successfully!'

