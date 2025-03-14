pragma solidity ^0.8.0;
contract test48-45 {
  bool x = true;
  function testStorage() public returns (uint64) {
    uint64 size = x.length;
    x[40] = 10;
    x[41] = 100;
    x[42] = 1000;
    x[43] = 10000;
    x[44] = 100000;
    return x.length;
  }
}
