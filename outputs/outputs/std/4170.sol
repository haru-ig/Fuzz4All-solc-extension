pragma solidity ^0.8.0;
contract Utils {
  function safeAdd(uint256 x, uint256 y) internal pure returns (uint256 a) {
    uint32 _x = uint32(x);
    uint32 _p = uint32(y);


    a = 0;
    while(_p >= 2**31) {
        a |= (_x >> 31);
        a <<= 1;
        _p >>= 1;
        _x <<= 1;
    }

    a |= (_x >> 31);


    a += y;
  }
}
