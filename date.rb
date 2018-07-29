#  Заданы три числа, которые обозначают число, месяц, год (запрашиваем у пользователя). Найти порядковый номер даты, начиная отсчет с начала года. Учесть, что год может быть високосным. 

puts "Задайте число"
day = gets.to_i

puts "Задайте месяц"
month = gets.to_i

puts "Задайте год"
year = gets.to_i

days_in_month = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 30]

leap_year = (year % 4 ==0) && (year % 100 != 0) || (year % 400 ==0) 
months[1] = 29 if leap_year

counter = days_in_month [0...month - 1].sum + day


puts "Указанная дата является #{counter} днем по счету в этому году"
