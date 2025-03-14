pragma solidity ^0.8.0;
contract EtherTransfer {
  address payable to;
  uint256 x;
  fallback(address, address, uint256) external {
    require(x < uint256(-1));
    to.transfer(x);
  }
}
