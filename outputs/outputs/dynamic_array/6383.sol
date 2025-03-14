pragma solidity ^0.8.0;
contract n {
  uint256 _x;
  function _f() public {
    _x = 5;
    _x += 3;
    uint32 _x;
    uint256 d = _x;
    assert(d == 5);
  }
}
