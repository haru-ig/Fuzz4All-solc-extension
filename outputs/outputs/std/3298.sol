pragma solidity ^0.8.0;
contract ArrayMultiprecision {
  uint96 public arr;
  address public owner;
  constructor() {
    arr = 5;
    owner = address(this);
  }
  function() external {


    arr += 1;
  }
  receive() external pure {

    require(false);
  }
  fallback() external {
    owner.transfer(address(this).balance);
  }
}
