def binary_search(min, max)
  puts "Piensa un número del #{min} al #{max}"
  num = gets.chomp
  mid = min + (max - min) / 2
  puts "¿El numero es menor a #{mid}? Si/No/Igual"
  resp = gets.chomp
  while resp != "Igual"
    if resp == "Si"
      max = mid
      mid = min + (max - min) / 2
    else
      min = mid
      mid = min + (max - min) / 2
    end
    puts "¿El numero es menor a #{mid}? Si/No/Igual"
    resp = gets.chomp
  end
  puts "El numero que pensaste es #{num}"
end
binary_search(50, 100)