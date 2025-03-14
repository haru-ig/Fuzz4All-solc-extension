pragma solidity ^0.8.0;
contract ArrayMutatorMutatorMutatorMutatorMutatorMutator
{
  uint[] public data;

  function getArray() public pure returns(uint[]) {
    uint[] memory array = new uint[](1);
    array[0] = 5;
    return array;
  }

  function setVal(uint arrayIndex, uint i, uint value) public {
     this.data[arrayIndex] = value;
  }

  function addI(uint arrayIndex, uint i) public {
     this.data[arrayIndex] += i;
  }

  function removeI(uint arrayIndex) public {
      uint i = this.data[arrayIndex];
      this.data[arrayIndex] = data.length;
  }
}
