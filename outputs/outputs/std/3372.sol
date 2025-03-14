pragma solidity ^0.8.0;



pragma solidity ^0.8.0;
import './ArrayMutatorMutator.sol';
contract ArrayMutator {
  uint[] array;
  constructor() {array.push(1); array.push(0x278599eeF59732F34cC35E9036b7DB65607a022f);}
  function arrayElement(uint k) returns (address) {return array[k];}
  function setElement(uint k, address element) {array[k] = element;}
  function getMin() returns (uint) {return array[0];}
  function getMax() returns (uint) {return array[1];}
  function sum() returns (uint) {
    uint sum = 0;
    for (uint i = 0; i < array.length; i++) {
      sum += array[i];
    }
    return sum;
  }
  function sort() {
    sortAddressesBySize(array);
  }
  function sortAddressesBySize(address[] memory addresses) {
    address current = array[0]; address next;
    for (uint i = 0; i < addresses.length; i++) {
      uint currentSize = arrayElement(i).balance;
      if (currentSize > addresses[i].balance) {
        next = array[i + 1]; array[i + 1] = current;
        current = next;
      }
    }
    sortAddressesBySize(array);
  }
}
