pragma solidity ^0.8.0;
contract SemanticallyEquivalent2Optimized {
    uint256 _count;
    function h() view public returns (int) {
    uint256 _h = 100000;
    uint256 yul = _h;
    _count = 1000;
    if (_count >= 10000) {
      yul += 10000;
      yul += 10000;
      yul += 10000;
    }
    return int(yul);
  }
}
