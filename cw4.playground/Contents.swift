import UIKit

var family = ["Yousef","Meshari","Majed","khalaf"] //my brothers
print(family)//disply family members

var evenNumbers = [2,4,6,8,10,12]// even num from 2 to 12
evenNumbers.remove(at: 1) // remove the second number from the array
print(evenNumbers)//disply it to see what was removed


evenNumbers +=  [16,18,20,22] // add array into array(evenNumbers)
print(evenNumbers.randomElement()!) // printing random number
evenNumbers.removeAll() // remove all the elements

var Numbers = [1,2,3,4,5]
for Number in Numbers {
    print(Number)
}
Numbers.append(6) // add 6 to 10 using append
Numbers.append(7)
Numbers.append(8)
Numbers.append(9)
Numbers.append(10)


print("-------------------") //
for number2 in Numbers { //disply the numbers after adding 6 to 10

   
    if number2 % 2 == 0 { //for the bunus cheching if the number is an odd or an even
    print("\(number2) is even")
    } else {
        print("\(number2) is odd")
           
    }
    
}

