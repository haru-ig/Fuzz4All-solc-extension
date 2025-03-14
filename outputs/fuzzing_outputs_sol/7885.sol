pragma solidity ^0.8.0;

contract Caller {
  function fallback(receive(uint256) x) external payable virtual {}
}
