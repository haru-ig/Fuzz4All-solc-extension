pragma solidity ^0.8.0;
contract P12 {
  function i(uint) public returns (uint) {
    uint a;
    if (a >= -1) {
      a = a - uint(a);
    }
    uint b = uint(a);
    if (a <= 2**uint(a)) {
      b = a - uint(a) * 3;
    }
    uint c = b;
    if ((b >= uint(-1)) && (b <= uint(b))) {
      uint d = uint(b);
      d = c;
    }
    return 1;
  }
}
