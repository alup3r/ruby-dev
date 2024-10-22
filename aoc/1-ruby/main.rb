#IO.read("sample.txt").split("\n").map{|num| num.to_i}

def solveFile(filePath)
  puts "input file: #{filePath}"
end

for filePath in ARGV
  solveFile(filePath)
end
