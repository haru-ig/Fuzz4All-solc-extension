pragma solidity ^0.8.0;
contract FallbackModificationExample {
  function modify() public {
    uint _datastorage;
    uint256 i;
    for (i = 0; i < 100; i++) {
      i -= 1;
    }
    i -= 1;
    i += 1;
    i -= 1;
  }
  function doSomethingWith(uint a1, bool b2, uint8 c3, address a4) public {
    uint256 _indexvariable = a1;
  }
}
