pragma solidity ^0.8.0;
contract PayableFallbackModificationExample {
  function modify() public returns (uint _dout) {
    uint _datastorage;
    uint256 i;
    for (i = 0; i < 50; i++) {
      _datastorage = _datastorage + 1;
    }
    return _datastorage;
  }
}
