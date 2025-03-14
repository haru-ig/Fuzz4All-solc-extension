pragma solidity ^0.8.0;



contract TestContract {


  uint x;


  constructor(uint x_) public {
    x = x_;
  }


  function inc() public returns (uint) {

    x += 1;
    return x;
  }
}
