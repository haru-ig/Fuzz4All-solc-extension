pragma solidity ^0.8.0;
contract C {
  address payable to;
  uint public counter = 10;
  uint public counter2 = 10;
  string public someString;
  constructor(address payable payee) public {
    to = payee;
  }
  function checkCounter() public view returns (uint) {
    return counter;
  }
  function mutatedCounter() public returns (uint) { return counter2++; }
  function doSomething() public returns (uint memory) {
    return 42;
  }
  function getSomeString() public view returns (string memory) {
    return (someString);
  }
}
