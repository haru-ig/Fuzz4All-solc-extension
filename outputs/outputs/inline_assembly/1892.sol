pragma solidity ^0.8.0;
contract newY {
    int constant internal x = 0;
    assembly {
      x := mul(x, 1)
     }
    function func() public pure {
      uint256 max = uint256(1);
      uint256 x;
      while (max >= 1) {
        x = x + max;
        x := add(x, x)
        max--;
      }
    }
}
pragma solidity ^0.8.0;
library Library {
    int constant internal x = 8;
    function func() public pure {
        uint256 max = uint256(1);
        uint256 x;
        while (max >= 1) {
          x = x + max;
          x := add(x, x)
          max--;
        }
    }
}

contract Regressions {
  Address private alice = Address(msg.sender);
  uint private x;
  uint private num = 100000;

  function() external payable {
    if (x!= 1) {
      revert();
    }
    assembly {
      let x := add(add(add(x, 19), 1), 187)
    }
  }
}
contract Regressions {
  address private alice = msg.sender;
  uint private x;
  uint private num = 100000;

  function() external payable {
    if (x!= 1) {
      revert();
    }
    x = x + x - 1;
  }
}
contract Regressions {
  uint private num = 100000;
  uint public x = 1;

  function () external payable {
    if (x!= 1) {
      revert();
    }
    x = x + x - 1;
  }
}
contract Regressions {
  uint private x;
  uint private num = 100000;

  modifier onlyAlice {
    require(msg.sender == alice);
    _;
  }

  function() external payable {
    if (x!= 1) {
      revert();
    }
    x = x + x - 1;
  }
}
