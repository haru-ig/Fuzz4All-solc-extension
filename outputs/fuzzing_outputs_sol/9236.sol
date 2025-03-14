pragma solidity ^0.8.0;
contract Caller {
  fallback() external payable {}
  receive() external {
    uint256 v = 3;
    (uint256 w, uint256 x) = v.split(':');
    assert(w!= x);
  }
}
