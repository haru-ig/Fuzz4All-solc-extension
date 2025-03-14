pragma solidity ^0.8.0;
contract Bonus {
  fallback() external payable external pure {
  }
}


pragma solidity ^0.8.0;
contract NoFallback {
  fallback() external {
  }
}
