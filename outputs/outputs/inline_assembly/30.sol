pragma solidity ^0.8.0;


contract C {
  address internal _owner;
  constructor(address payable o) {
    _owner = o;
  }
  modifier restricted() {
    require(msg.sender == _owner);
    _;
  }
  function transferOwnership(address payable newOwner) public restricted {
    require(newOwner!= address(0));
    _owner = newOwner;
  }
}
