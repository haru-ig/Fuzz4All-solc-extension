pragma solidity ^0.8.0;
contract SemanticallyEquivalent4
{
  function SemanticallyEquivalent4() {
  }
  function x() view public returns (int) {
    uint256 _h = constantValue;
    uint256 i = 0;
    uint256 num = 2e2 / 4;
    uint256 _num;
    while (num!= _h) {
      _h = num;
      num = 2e2 / 4;
      _num = _h;
    }
    return int(_num);
  }
  uint256 constant constantValue = 2e2 / 4;
}
