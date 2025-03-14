pragma solidity ^0.8.0;
contract SemanticallyEquivalent4 is SemanticallyEquivalent3 {
  function h() public view returns (int) {
    uint256 _h = constantValue;
    uint256 i = 0;
    uint256 _count = 0;
    _count = constantValue;
    if (i == 1) {
      _h = constantValue;
      for (_count = 0; _count < 100; _count++) {
          _h += constantValue;
      }
    }
    return int(_h);
  }
  uint256 constant constantValue = 1500;
}

pragma solidity ^0.8.0;
contract SemanticallyEquivalent5 {
...
}
