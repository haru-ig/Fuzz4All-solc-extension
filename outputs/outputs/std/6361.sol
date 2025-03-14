pragma solidity ^0.8.0;
contract Array {
  using Mutator for Mutator.address;
  for (uint256 i = 0; i < 6; i++) {
    address[1][5][3] memory a = [a1, a2, a3, a4, a5];
    for (uint256 j = 0; j <= 5; j++) {
      a[i][j][3] = 10;
    }
  }
  function a1() view public returns(uint[]) {
    return a1;
  }
  function a2() view public returns (address[]) {
    return a2;
  }
  function a3() view public returns (uint256[2][3]) {
    return a3;
  }
  function a4() view public returns (uint) {
    return a4;
  }
  function a5() view public returns (string memory) {
    return a5;
  }
  constructor() {
    address[33][5][3] memory b = [b1, b2, b3, b4, b5];
    b6 = 10;
    for (uint256 i = 0; i <= 5; i++) {
      b[i][5][18] = 10;
    }
  }
  function b3() view public returns (uint256) {
    return a2.length.add(23);
  }
  function b4() view public returns (uint[], uint256) {
    return (a4, 10);
  }
  function b6() view public returns (double memory) {
    return a3[6][68].add(a5.length.add(10));
  }
  function b1() view public returns (uint256) {
    return a1.length.add(2);
  }
  function b2() view public returns (string memory) {
    return a2.length < 3? "AAA" : a1.length > 5? "aaa" : "AAA.bbb";
  }
  uint56[1][5][3] a1 = [uint256[5][3]};
  uint256[3][2] memory a2 = [uint256[2][2], uint256[2][2]];
  uint256 a3[3][3][3] = [[uint256[2][3]], uint256[2][3]]];
  uint a4 = 10;
  uint[3] memory a5 = [2];
  uint memory b6 = 20;
  uint256[5][3] memory b1 =
