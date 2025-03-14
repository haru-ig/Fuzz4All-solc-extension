pragma solidity ^0.8.0;
contract SemanticallyEquivalent4 {
  function x() view public returns (int) {
    uint256 i;
    uint256 _count;
    uint256 _num;
    uint256 _h;
    uint256 _h1;
    uint256 _h2;
    uint256 _h3;
    assembly {
      _count := 1000
      _num := 1000
      _h := 26047
      _h2 := add(_num, _count)
      _h1 := div(mod(_num, _count), _count)
      _count := mul(_num, div(_count, 2))
      i := add(div(_num, 2), 1)
    }
    while (i!= 154) {
      _h3 = sub(_h1, _h2);
      _num = add(_h2, _h3);
      _h1 = sub(_h2, _h3);
      _h = add(_h1, _h3);
      i += 1;
    }
    return int(_num);
  }
}
