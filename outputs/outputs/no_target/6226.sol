pragma solidity ^0.8.0;
contract MultiGenerator {
     uint constant minValue = 5;
         uint constant decrement = 1;
         uint constant maxValue = 99;
     function generateMultiple(uint num1) public  pure returns(uint sum){
         sum = generateMultiple(num1, decrement);
         return sum;
     }
 }
