pragma solidity ^0.8.0;
contract Fallback {
  receive() function() external payable { revert(); }
  receive() pure {}
}
