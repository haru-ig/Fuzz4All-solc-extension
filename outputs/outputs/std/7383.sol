pragma solidity ^0.8.0;
contract Math {
  uint256[2] public myArray;
  uint256 public myArrayOfElement;
  function getArrayOfElement() public view returns (uint256) {
    return uint256(myArrayOfElement);
  }
  function setArrayOfElement(uint256 _value) public {
    myArrayOfElement = _value;
  }
}
