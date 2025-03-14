pragma solidity ^0.8.0;
contract Arrays12 {
  uint256[] public s;
  uint256[] public s2;
  constructor() public {
    for (uint i = 0; i < s.length - 1; i++)
      s[i] = (uint256)i;
    s2[2] = 2;
    (uint8 _,) = s2[1];
    uint256 a = s2[s.length-1];
    s2[2] = 3;
  }
}
