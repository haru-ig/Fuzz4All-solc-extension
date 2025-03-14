pragma solidity ^0.8.0;
contract SemanticallyEquivalent4 {
  function h() view internal returns (uint256) {
    uint256 _h = constantValue;
    uint256 i = 0;
    uint256 _count = _h;
    while (i < 100) {
      _h *= 8;
      _h += constantValue;
      _count *= 10;
      _count += i;
      i += 1;
    }
    return _h + _count;
  }

  uint256 constant constantValue = 1500;
  uint256 public publicValue;

  constructor() public {
    publicValue = 0xdeadBEEF;
  }
}
```
