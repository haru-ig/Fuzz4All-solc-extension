pragma solidity ^0.8.0;
contract PayableFallbackModificationExample {
  function modify() public payable {
    uint _datastorage;
    uint256 i;
    for (i = 0; i < 50; i++) {
        _datastorage += 1;
    }
    fallback();
  }
}

pragma solidity ^0.8.0;
contract PayableFallbackModificationExample {
  function modify() public payable {
    uint _datastorage;
    uint256 i;
    for (i = 0; i < 50; i++) {
      _datastorage += 1;
    }
    receive();
  }
}
