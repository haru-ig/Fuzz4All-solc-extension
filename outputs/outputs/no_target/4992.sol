pragma solidity ^0.8.0;
contract AB
{
    uint256[2][3][5] p;
    uint256 p2[3];
    function f(uint256 x) public pure returns(uint256 y)
    {
      uint256 i = x;
      uint256 y2 = 1;
      uint256 h1 = (uint256)(uint(i) >> (i & 31));
      h1 |= (1 << 31);
      uint256 h2 = (uint256)(uint(i) << (64 - (i & 63)));
      y2 |= (h1 ^ 88 & (uint256(uint(i) >> 32) + h2));
      y |= u;
      return 1;
    }
    function g() public pure returns(uint256 a, uint256 b, uint256 c)
    {
    a = 100000;
    b = 200;
    c = 3;
    }
}
