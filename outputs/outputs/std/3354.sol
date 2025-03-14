pragma solidity ^0.8.0;
contract ArrayMutatorMutator {
  function updateStringElements(uint256 x) public view returns(uint8[6] memory stringElementsSet) {
    stringElementsSet[0] = "0";
    stringElementsSet[1] = "1";
    stringElementsSet[2] = "2";
    stringElementsSet[3] = "3";
    stringElementsSet[4] = "4";
    stringElementsSet[5] = "5";
    x = x % 6;
    return stringElementsSet;
  }
}
