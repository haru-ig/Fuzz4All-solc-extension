pragma solidity ^0.8.0;
contract MutatedFallbackModificationExample {
  function modify() public {
    uint _datastorage;
    uint _datastorage2;
    uint i;
    for (i = 0; i < 50; i++) {
      _datastorage += 1;
      _datastorage2 += 1;
    }
    uint _dout = _datastorage;
    uint _dout2 = _datastorage2;
  }
}
