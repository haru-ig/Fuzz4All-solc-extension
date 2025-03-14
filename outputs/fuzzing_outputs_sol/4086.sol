pragma solidity ^0.8.0;
contract Caller {
  receive() external payable {}
  function x() public pure returns (uint256) {
    return (uint256(-10));
  }
  fallback();
}
