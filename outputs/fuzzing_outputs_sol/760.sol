pragma solidity ^0.8.0;
contract Modification {
  function modify() public view {
    uint256 i;
    for (i = 0; i < 99; i++) {
      i += 1;
    }
    i += 98;
  }
}

pragma solidity ^0.8.0;
contract Modification {
  function modify() public view {
    uint256 i = 1399;
    for (i = 0; i < 100; i++) {
      i++;
    }
    i *= 72038;
  }
}

pragma solidity ^0.8.0;
contract Modification {
  function modify() public view {
    uint256 i;
    uint32 j = 0x123456789ABCD123;
    for (i = 0; i < 100; i++) {
      i++;


      uint256 m = 0xDEADBEEF;
      m += 1;
      j += m;
    }

    i += 1234567890x9912;
  }
}

pragma solidity ^0.8.0;
contract Modification {
  uint32 public constant x = 0x123456789ABCD123;
  uint256 y = 0xDEADBEEF;

  function modify() public view {
    uint256 i = 0;
    while (true) {
      i = i + 1;
      i >>= 1;
      if (i == 0) {
        y = y + 1;
        break;
      }
    }
    for (uint32 j = 0; j < 50; j++) {
      j++;
      j >>= 1;
      if (j == 0) {
        j = 65;
        y = y + 1;
        break;
      }
    }
    uint256 z = 72040;
    uint256 j_2 = j;
    uint256 z_j = z >> j_2;
    uint256 z_j_j = (z >> j_2) >> 1;
  }
}

pragma solidity ^
