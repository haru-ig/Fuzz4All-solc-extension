pragma solidity ^0.8.0;
contract A {
  uint constant one = 1;
  uint constant two = 2;
  mutator Multiplier;
  constructor() {
    Multiplier = new Mutator();
  }
  function set(uint _number) public {
    Multiplier.setNumber(0, Multiplier.multiply(one,_number))+10;
    Multiplier.setNumber(1, Multiplier.multiply(two,_number))+10;
  }
}
