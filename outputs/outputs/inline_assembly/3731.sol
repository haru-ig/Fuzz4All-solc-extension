pragma solidity ^0.8.0;
contract SemanticallyEquivalent12Optimized {
  int f() view public returns (int) {
    uint256 _f;
    uint256 _g;
    uint256 _y;
    _y = 1;
    _g = (1 + _y) + 2;
    _f = _g + _g;
    return int(_f);
  }
}

pragma solidity ^0.8.0;
contract SemanticallyEquivalent9Optimized {
  int f() view public returns (int) {
    uint256 _f;
    uint256 _g;
    uint256 _y;
    uint256 _z;
    uint256 _l;
    uint256 _k;
    uint256 _sum1;
    uint256 _sum2;

    _y = 1;
    _g = ( 2 + _y ) + 1;
    _z = _g + ( 1 + _y )* _g;
    _k = _y* _y + _y + _y + _y;
    _l = _k;
    _sum2 = _l* _l;
    _sum1 = _sum2 + ( _z + _z* _k) + _z + _z* _l;
    _f = _sum1 + _sum2* _z;
    return int(_f);
  }
}

pragma solidity ^0.8.0;
contract SemanticallyEquivalent13Optimized {
  int f() view public returns (int) {
    uint256 _h;
    uint256 _g;
    uint256 _z;

    _z = 4;
    assert(_z == 4);

    _g = ( 28 + 1 + _z ) + _z + 1;
    _h = _g + ( 1 + _g* _g ) + _g* _g* _g* _g* _g* _g* _g;
    _g = _h + _h* _h* _h;
    _h = _
