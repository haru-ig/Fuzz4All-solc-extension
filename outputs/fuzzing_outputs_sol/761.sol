pragma solidity ^0.8.0;
contract Modification {

  function unmodified() public view {
    uint256 i;
    for (i = 0; i < 100; i++) {
      i += 1;
    }
  }

  function modify() public view {
    uint256 i;
    for (i = 0; i < 100; i++) {
      i += 1;
    }
  }
}


pragma solidity ^0.8.0;
contract Modification {

  function unmodified() public view {
    uint256 i;
    for (i = 0; i < 100; i++) {
      i += 1;
    }
  }

  function modify() public view {
    uint8 i;
    for (i = 0; i < 100; i++) {
      i += 1;
    }
  }

  function modify2() public view {
    uint256 i;
    uint8 i2;
    for (i = 0; i < 100; i++) {
      i += 1;
      i2 += 1;
    }
  }
}

contract C {
  bool success;
  receive () external payable {
    if (!success) revert(0x2020);
  }

  receive () external {
    if (!success) revert(0x3020);
  }

  receive () external payable {
    if (!success) revert(0x4020);
  }

  fallback () external payable {
    if (!success) revert(0x5020);
  }

  fallback () external {
    if (!success) revert(0x6020);
  }
}
contract FallbackInContract {

  receive () external payable {}
}
contract FallbackInContract2 {
  receive () external {}
}
