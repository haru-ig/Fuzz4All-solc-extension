pragma solidity ^0.8.0;
contract Caller {
}
contract ReceiveCaller {
  uint8 x;
  receive() external pure returns (uint256) {
    uint8 y = x;
    return uint256(y);
  }
}
