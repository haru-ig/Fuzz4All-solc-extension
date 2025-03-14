pragma solidity ^0.8.0;
contract Array {
  uint256[] internal myArray;
  function getArray() public view returns (uint256[] memory) {
    return myArray;
  }
  function setArray(uint256[] memory _newArray) public {
    myArray = _newArray;
  }
  function setElementAtIndex(uint index, uint256 _value) public {
    myArray[index] = uint256(_value);
  }
}
