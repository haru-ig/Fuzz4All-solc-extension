pragma solidity ^0.8.0;
contract Array {
  uint256[] private myArray;
  uint256 public myArrayOfElement;
  function getArrayOfElement() public view returns (uint256) {
    return uint256(myArrayOfElement);
  }
  function setArray(uint256 _value) public {
    myArrayOfElement = _value;
  }
}
function convertFromUint(uint256 a) external pure returns (uint256) {
  return a;
}
