pragma solidity ^0.8.0;
contract BadCaller {
  constructor() {}
  fallback(uint amount) external payable {
    (uint) (address(this).balance);
  }
}

pragma solidity ^0.8.0;
contract GoodCaller {
  constructor() {}
  fallback(uint amount) external payable {
    (uint) (address(this).balance);
  }
}

pragma solidity ^0.8.0;
contract LowLevelCaller {
  function lowLevelFunctionCaller(uint amount) external pure returns (uint) {
    (uint) (address(this).balance);
  }
}
contract Caller is LowLevelCaller {
  constructor() {}
  fallback(uint amount) external payable {
    lowLevelFunctionCaller(amount);
  }
}
