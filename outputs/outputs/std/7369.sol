pragma solidity ^0.8.0;
contract Array {
  uint256[] internal myArray;
  uint256 myArrayOfElement;
  function getArrayOfElement() public view returns (uint256) {
    return uint256(myArrayOfElement);
  }
  function setArray(uint256 _value) public {
    myArrayOfElement = _value;
  }
}
