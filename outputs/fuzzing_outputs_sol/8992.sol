pragma solidity ^0.8.0;
contract Caller {
  function callBackFunc(uint _value) public {
    uint sum;
    for (uint v = 1; v <= 10; v++) {
      uint256 v2 = v;
      while (v < v2) {
        sum += _value;
        v2 += v;
      }
    }
  }
}
