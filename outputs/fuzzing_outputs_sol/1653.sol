pragma solidity ^0.8.0;
contract D {
  emit Baz(uint v);
  function baz() external {
    emit Baz(0);
  }
}
contract Caller {
  constructor(address c) public {
    D(c).baz();
  }
}
