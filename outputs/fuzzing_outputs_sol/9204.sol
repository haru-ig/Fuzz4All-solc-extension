pragma solidity ^0.8.0;
contract Mutator {
  int public constant originalInt = 4;
  string public originalString = "Hello World";
  mapping(address => string) public strings;
  uint internal _num;
  constructor() {
    _num = 7;
  }
  function newMethod() public {
    strings[msg.sender] = "Hello";
    _num = 6;
    originalInt = 5;
    originalString = "Hello";
  }
  function getMethod() public view returns (int, string) {
    return (_num, originalString);
  }
  function getStorageMethod() public view returns (uint internal) {
    return _num;
  }
  function setStorageMethod(uint _newNum) public {
    _num = _newNum;
  }
  receive() external payable {}
}
