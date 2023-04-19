leap_year=int(input("Enter the value: "))
if(leap_year%400==0 or(leap_year%4==0 and leap_year%100!=0)):
      print("Leap_Year")
 else:
      print("Not a leap year")
