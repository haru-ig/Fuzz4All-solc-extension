pragma solidity ^0.8.0;
contract SemanticallyEquivalent2Optimized {
  function h() view public returns (int) {
    uint256 i;
    uint256 h;
    uint256 _count;
    uint256 _yul;
    _yul = 1500;
    i = 0;
    _count = 0;
    h = 1;
    while (h!= _yul) {
      {
        i = i + h;
      }
      _count = h * h;
      {
        h = _count;
        h = _count;
      }
    }
    return int(i);
  }

}
