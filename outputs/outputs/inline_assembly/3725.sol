pragma solidity ^0.8.0;
contract SemanticallyEquivalent2 {
  function h() internal view returns (int) {
    uint256 _h = constantValue;
    uint256 i = 0;
    uint256 _count = 0;
    uint256 prevYul = _h;
    _count = constantValue;
    if (i == 1) {
      prevYul = prevYul;
      for (_count = 0; _count < 613; _count++) {
        _h = prevYul;
        prevYul = prevYul * prevYul;
      }
    }
    return int(_h);
  }
  uint256 constant constantValue = 1500;
}
contract SemanticallyEquivalent {
  constructor() {}
  function f() internal view returns (int) {
    uint value;
    assembly {

      value := mload(add(add(0x40, 0x20), 0x20))
    }
    if (value == 0)
      return 0;
    if (value % 2 == 1)
      return 0;
    return value;
  }
}
