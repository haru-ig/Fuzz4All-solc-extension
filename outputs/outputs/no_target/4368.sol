pragma solidity ^0.8.0;
contract D {
    function f() public returns (uint256 x, uint256 y) {
      uint _x = 1;
      uint256 _y;
      return (_x, _y);
    }

    function u() public pure {
      uint256 x, _y;
      _x = x;
      _y = 0;
    }

    function r() public pure {
      uint256 x = 1;
      uint256 _f_x = x + 5;
    }
    function w() public pure {
      uint256 _s, _f_x;
      _s = _f_x;
    }
}
