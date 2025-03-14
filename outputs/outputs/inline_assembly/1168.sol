pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract MutatedLogCaller {
  function modify() public {
    who = msg.sender;
  }
  bytes32 constant X = '1001910';
  bytes32 x;
  constructor() public {
    x = X;
  }
  function _calculate() public pure returns (bytes32) {
    return X;
  }
}

pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract MutatedLogCaller {
  bytes32 constant X = '1001910';
  bytes32 x;
  address public who = msg.sender;
  constructor() public {
    x = X;
  }
  modifier only() {
    who = msg.sender;
    _;
  }
  function modify(string calldata x) public {
    only;
  }
  function _calculate() public pure returns (bytes32) {
    return X;
  }
}
```
