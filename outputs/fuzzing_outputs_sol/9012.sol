pragma solidity ^0.8.0;
contract Caller {
  receive() external payable {
    uint v = 1;
    while (v < 100) {
      uint sum = 1;
      while (sum < 10) {
        sum += 1;
        if (sum > 10) {
          sum = 0;
        }
        v += v;
      }
    }
  }
}
