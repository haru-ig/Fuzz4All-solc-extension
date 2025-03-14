pragma solidity ^0.8.0;
contract SemanticallyEquivalent6 is SemanticallyEquivalent5 {
  function y() view public returns (int) {
    uint256 _h = constantValue;
    uint256 _h2 = _h1;
    uint256 _h3 = 1 - _h1;
    uint256 _h5 = _h + _h2;
    uint256 _h6 = _h3 - _h3;
    uint256 _h7 = _h4 + _h4;
    uint256 _h8 = _h5 - _h5;
    return int(
      (
        _h7 -
        _h6 +
        ((_h6 >> 31) | _h8) +
       (((_h - _h2) >> 1) - (((_h3 << 1) + 1) >> 30)) +
         (((_h4 + _h5) << 1) - (_h ^ _h2)))
      );
  }
}

pragma solidity ^0.8.0;
contract A {
  function f() public {
    assembly {
      f := 1
    }
  }
  uint256 f;
}
