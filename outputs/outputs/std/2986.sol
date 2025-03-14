pragma solidity ^0.8.0;
library Array {
  function sum(uint[] memory array) public view returns (uint) {
    uint total = 0;
    for(uint i = 0;i < array.length;){
      total = total + array[i++];
    }
  }
}
