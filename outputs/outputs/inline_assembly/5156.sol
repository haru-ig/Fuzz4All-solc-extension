pragma solidity ^0.8.0;
contract C {
  address payable a;
  uint public counter = 0;
  constructor(address payable payee) public {
    a = payee;
  }
  function checkCounter() public view returns (uint) {
    return counter;
  }
}
