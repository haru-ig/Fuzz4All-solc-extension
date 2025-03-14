pragma solidity ^0.8.0;

contract MutatedArrayMutator is ArrayMutatorMutator {

  uint[5] private intArray;

  constructor() {
    intArray[0] = 10;
    intArray[1] = 20;
    intArray[2] = 30;
    intArray[3] = 40;
    intArray[4] = 50;
  }



  function minVal() public view returns (uint){
    return intArray[0];
  }
  function maxVal() public view returns (uint){
    return intArray[4];
  }
  function sumVal() public view returns (uint){

    uint sum;
    for (uint idx = 0; idx < intArray.length; idx++) {
      sum = sum + intArray[idx];
    }
    return sum;
  }





  function setVal(uint i, uint value) public { intArray[i] = value; }

  function addVal(uint i, uint value) public { intArray[i] = intArray[i] + value; }
  function removeVal(uint i) public { intArray[i] = intArray[arr.length - 1]; }
}
