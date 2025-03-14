pragma solidity ^0.8.0;
contract Array {
  uint[] public myArray = new uint[](5);
  uint[] public arr;
  function setMyArray(uint[] memory _arr) public {
    myArray = _arr;
  }
  function getMyArray() public view returns (uint[]) {
    return myArray;
  }
}
