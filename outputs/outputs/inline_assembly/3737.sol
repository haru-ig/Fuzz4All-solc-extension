pragma solidity ^0.8.0;
contract SemanticallyEquivalent6Optimized {
  constructor(){
    uint256 _h = constantValue;
  }
  function h() view public returns (uint256 _h){
    uint256 _h = constantValue;
    uint256 _h1 = h();
    (_h) = _h + constantValue + _h1;
    _h *= 2;
    (uint256 i) = constantValue;
    (uint256 j) = i + _h1 + _h;
    _h1 += j + _h + constantValue;
    (uint256 i1) = j + _h1 + _h;
    (uint256 i2) = uint256(i1 / constantValue);
    (_h) += constantValue * (i2 - i) / (_h1 + constantValue);
    return _h;
  }
  uint256 constant constantValue = 1500;
}
