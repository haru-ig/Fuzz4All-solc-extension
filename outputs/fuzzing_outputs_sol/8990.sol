pragma solidity ^0.8.0;
contract Caller {
  constructor() payable {
    uint sum;
    for (uint v = 1; v <= 10; v++) {
    uint256 v2 = 1;
      while (v2 < v) {
        sum += v;
        v2 += v;
      }
    }
  }
}
