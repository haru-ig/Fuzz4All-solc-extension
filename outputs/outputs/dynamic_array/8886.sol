pragma solidity ^0.8.0;
contract MutatedSemanticallyEquivalentSolidityPointers2 {
  uint[] public array;
  constructor(){
    array = new uint[](50);
    for(uint i = 0; i < 50; i++){
      array[i] = uint(2000 + 10000 * i);
    }
  }
}
