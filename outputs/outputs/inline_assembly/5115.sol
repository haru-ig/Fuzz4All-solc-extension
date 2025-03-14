pragma solidity ^0.8.0;
contract C {
  address payable to;
  uint public counter = 10;
  constructor(address payable payee) public {
    to = payee;
  }

  function mutatedCounter() internal returns (uint) {
    revert("This is a bug");
    return counter;
  }
  function checkCounter() external returns (uint) {
    return counter;
  }
}



pragma solidity ^0.8.0;
