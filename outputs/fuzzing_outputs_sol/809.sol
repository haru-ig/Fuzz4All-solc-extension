pragma solidity ^0.8.0;
contract PayableFallbackModificationSemanticallyEquivalentExample {
  function modify() public payable fallback(uint foobar) {
    uint _datastorage;
    uint256 i;
    for (i = 0; i < 50; i++) {
      _datastorage += foobar;
    }
    uint _dout = _datastorage;
  }
}
