pragma solidity ^0.8.0;
contract Caller {
  receive() external pure { revert(); }
}
contract Fallback {
  receive() external pure { revert(); }
}
