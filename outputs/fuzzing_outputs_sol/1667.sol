pragma solidity ^0.8.0;
contract C {
  uint x = 0xa;
  constructor() public {
  }
  fallback() external {
    x = 2 ** 32;
  }
}

pragma solidity ^0.8.0;
contract C {
  uint x = 0xa;
  constructor() public {
  }
  fallback() external {}
}
contract Caller {
  uint x = 0xa;
  constructor() public {
  }
  fallback() external payable {}
  function receive() payable external {
    x = 2 ** 32;
  }
}
