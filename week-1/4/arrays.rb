require "pry"

def sum_of_array numbers
  sum = 0
  numbers.each do |n|
    sum += n.to_i
  end
  sum
end

def convert_lines_to_row_sums lines
  row_sums = []
  lines.each do |line|
    row_sum = sum_of_array line.split(",")
    row_sums.push row_sum
  end
  row_sums
end

def sum_of_all_lines lines
   rows = convert_lines_to_row_sums lines
   sum_of_array rows
end

def awkward_row_sum lines
  rows = convert_lines_to_row_sums lines
  # total = 0
  # rows.each do |r|
  #   if r > 250
  #     total += r
  #   end
  # end
  # total
  big_rows = []
  rows.each do |s|
    if s > 250
      big_rows.push s
    end
  end
  sum_of_array big_rows
end

# --------

contents = File.read "numbers.txt"
lines = contents.split "\n"

total = sum_of_all_lines lines
puts "The total is: #{total}" # 30265

total = awkward_row_sum lines
puts "Awkward sum is: #{total}" # 23522