pragma solidity ^0.8.0;
contract P2 {
    uint32 public iv;
    constructor(uint32 _iv) public {
      iv = _iv;

      uint40 z = 84245674045406463 * 84245674045406463847;
      (uint32 m, uint32 n) = (z + 241, z + 188);
      z -= 7123813874;
      bytes32 _bytes32 = bytes32(z);
      uint32 c = 2 * 1;
      (uint32 u, uint32 v) = (_bytes32, m + c);
      m += 64271821;
      sgn(m);

    }
  function sgn(uint32 number) private pure returns(uint8 positive) {
      positive = number / 1;
      if (positive == 0) positive++;
      return positive;
  }
}
