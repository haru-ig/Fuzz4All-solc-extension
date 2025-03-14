pragma solidity ^0.8.0;
contract PayableFallbackModification {
  function modify() public payable {
    uint _datastorage;
    uint256 i;
    for (i = 0; i < 50; i++) {
      _datastorage += 1;
    }
    payable(msg.sender).transfer(_datastorage * 10);
  }
}


pragma solidity ^0.8.0;
contract Caller {
  uint256 _state;
  uint256 public x = 0;

  constructor() {
    _state = 0;
  }

  function modify() public pure {
    _state = 1;
  }

  function fail() public {
    modify();
  }

  function fail2() public {
    modify();
    fail();
    modify();
    fail();
    modify();
    fail();
  }
}
