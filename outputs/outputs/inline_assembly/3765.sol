pragma solidity ^0.8.0;
contract SemanticallyEquivalent5 {
  constructor () {
    uint256 _h = constantValue;
    uint256 _h1 = constantValue;
  }
  function x() view public returns (int) {
    uint256 _h1 = constantValue;
    uint256 _h = constantValue;
    uint256 i = 0;
    uint256 _count = 0;
    uint256 _h = _h1 + _h;
    uint256 _h11 = _h;
    while (_count < 255) {
      _h-= _h1;
      _count++;
      _h1 += _h;
      i++;
    }
    return int(i + _h11);
  }
  uint constant constantValue = 1000;
}

pragma solidity ^0.8.0;
contract SemanticallyEquivalent6 {
  constructor () {
    uint256 _h = constantValue;
  }
  function x() view public returns (int) {
    uint256 _h1 = constantValue;
    uint256 _h = constantValue;
    uint256 i = 0;
    uint256 _count = 0;
    uint256 _h = uint29(_h1);
    uint256 _h11 = _h;
    while (_count < 255) {
      _h-= _h1;
      _count++;
      _h1 += _h;
      i++;
    }
    return int(i + _h11);
  }
  uint constant constantValue = 128;
  function uint29(uint _x) internal pure returns (uint29  __x) {
    uint29 __r;
    __r._lo_ = _x & 0xffffffff;
    __r._hi_ = (_x >> 32) & 0xffffffffu;
    return __r;
  }

}
pragma solidity 0.5.8;
contract SolidityZero {
    constructor() {
    }

    receive() external payable {}
