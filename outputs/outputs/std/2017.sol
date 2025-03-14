pragma solidity ^0.8.0;
contract Array_equivalent_16 {
   function add(uint x, uint y) public pure returns (uint) {return x+y;}
}
contract DiceRoller {
   struct Pips {
     uint numerator;
     uint denominator;
   }

   event DiceRolled(uint numerator, uint denominator);

   constructor(uint num, uint d) public {
     require(num > 0);
     require(d > 0);
     numerator = num;
     denominator = d;
   }

   function roll() public view returns (uint) {
     require(numerator!= 0);
     uint k = (block.timestamp / numerator) % denominator;
     uint result = (block.timestamp / denominator) / k;
     emit DiceRolled(numerator, denominator);
     return result * k;
   }
}
