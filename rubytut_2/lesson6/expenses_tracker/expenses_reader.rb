require "rexml/document"
require "date"

current_path = File.dirname(__FILE__)
file_name = current_path + '/my_expenses.xml'

abort 'File not found' unless File.exists? file_name

file = File.new(file_name)

doc = REXML:: Document.new(file)

expenses_by_day = Hash.new

doc.elements.each('expenses/expense') do |item|
  expense_sum = item.attributes['amount'].to_i
  expense_date = Date.parse(item.attributes['date'])
  expense_category = item.attributes['category']

  expenses_by_day[expense_date] ||= 0

  expenses_by_day[expense_date] += expense_sum
end

file.close

expenses_by_month = Hash.new

current_month = expenses_by_day.keys.sort[0].strftime('%B %Y')

expenses_by_day.keys.sort.each do |key|
  # if a key of expenses for the current month is not initialized yet
  # create the key and assign 0 value (expense sum) to it
  expenses_by_month[key.strftime('%B %Y')] ||= 0

  # add expenses sum by day for the current month
  expenses_by_month[key.strftime('%B %Y')] += expenses_by_day[key]
end

# display summary of all expenses for the first month

puts "------ [#{current_month}, total expenses: $#{expenses_by_month[current_month]}] ------"

# list all expenses for all days in the current month
expenses_by_day.keys.sort.each do |key|
  # if the current month is different from the first expense month memo
  # update the current month
  if key.strftime('%B %Y') != current_month
    current_month = key.strftime('%B %Y')

    puts "------ [#{current_month}, total expenses: $#{expenses_by_month[current_month]}] ------"
  end

  # key is instance of Date class
  # that's why we can access day property
  puts "\t#{key.day}: $#{expenses_by_day[key]}"
end
