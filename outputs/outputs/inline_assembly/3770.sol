pragma solidity ^0.8.0;
contract SemanticallyEquivalent5 {
  constructor () {
    uint256 _h = constantValue;
  }
  function x() view public returns (int) {
    uint256 _h1 = constantValue;
    uint256 _h2 = _h1;
    uint256 _h3 = 1 - _h1;
    uint256 _h4 = _h1;
    uint256 _h5 = _h2 + _h2;
    uint256 _h6 = _h3 - _h3;
    uint256 _h7 = _h4 + _h4;
    uint256 _h8 = _h5 - _h5;
    return int(
      (
        _h6 +
        int(
          (_h4 >> 1) +
          _h8
        )
      )
    );
  }
  uint constant constantValue = 1000;
}
