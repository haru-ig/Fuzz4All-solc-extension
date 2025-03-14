pragma solidity ^0.8.0;
contract SemanticallyEquivalent {
  constructor() {
    uint256 num = 65535;
    uint256 a = 255;
    uint256 a1 = 255;
    while (a!= 0 && num!= 1) {
      uint256 a2 = num % 256;
      num = num / 256;
      a -= a2;
      a1 += a2;
    }
    uint256 n1 = int(1 + a1) - int(1 + a);
    return int(1 + a);
  }
}
