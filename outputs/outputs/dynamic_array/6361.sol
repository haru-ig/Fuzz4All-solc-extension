pragma solidity ^0.8.0;
contract c {
  function f(uint16[20] memory m) public {
    m[19] = 1;
  }
  bool m1[20];
  function g() public view returns (uint16[20]){ m1[21] = 1; return m1; }
}

pragma solidity ^0.8.0;
contract c {
  uint8 [19] s1 = [1];
  uint8 [20] s20 = [1];
  uint16 [20] s160 = [1];
  uint8 s0;
  function f() public {
    m1[s0] = 1;
    s20[s0] = 1;
    s20[19] = 1;
    s160[20] = 1;
    s0 = 1;
  }
}
