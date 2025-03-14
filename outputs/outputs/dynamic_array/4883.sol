pragma solidity ^0.8.0;
contract Test {
  constructor () {
    this.set(32);
  }

  uint private x = 0;
  function set(uint _y) public {
    x = _y;
  }
}
