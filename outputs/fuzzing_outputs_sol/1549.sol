pragma solidity ^0.8.0;
contract MutatorExample {

  function sendEther(address payable target, address payable sender, uint256 value) external pure { target.transfer(value); }
}

pragma solidity ^0.8.0;
contract ComplexExample {
  constructor() {
    uint256 a = 0;
    while (false == a) {
      throw;
    }
  }


  function sendEther(address payable target, address payable sender, uint256 value) external pure { target.transfer(value); }
}
