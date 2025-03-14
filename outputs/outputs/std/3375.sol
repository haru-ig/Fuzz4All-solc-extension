pragma solidity ^0.8.0;
contract ArrayMutatorMutatorMutator is ArrayMutatorMutator {
  uint[] public uintElements;
  uint[] public uintElements2;
  uint[] public uintElements3;

  function addUintElements(uint i) external {
    uintElements.push(uintElements.length);
    uintElements2.push(uintElements[uintElements.length - 1]);
    uintElements3.push(uintElements[uintElements.length - 100]);
  }

  function main() public {
    addUintElements(1);
    addUintElements(3);
    addUintElements(5);
    addUintElements(7);
    addUintElements(9);
    addUintElements(13);
    addUintElements(25);
    addUintElements(500);
    addUintElements(-987);
    addUintElements(uintElements.length-1);
    addUintElements(uintElements2[uintElements3.length-1]);
    addUintElements(uintElements2[uintElements3.length-100]);
    addUintElements(uintElements2.length);
  }
}
