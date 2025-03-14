pragma solidity ^0.8.0;
contract Bar {
  address barAddr;
  constructor() payable {
    barAddr = new address;
    _transfer(address(this));
  }

  function _transfer(address to) private {
    uint a = 42;
  }

  receive() payable {
  }
}
