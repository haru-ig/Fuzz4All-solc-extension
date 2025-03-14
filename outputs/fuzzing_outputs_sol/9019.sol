pragma solidity ^0.8.0;
contract Fallback {
  receive() external payable {
    uint[100] memory memoryTemp = [1, 2, 7, 10, 40, 45, 8]
    for (uint i = 0; i < 100; ++i) {
      assert(memoryTemp[i] == 0xFFFD);
    }
  }
}
