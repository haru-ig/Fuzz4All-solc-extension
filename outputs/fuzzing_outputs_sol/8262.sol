pragma solidity ^0.8.0;
contract SemanticSimilar15 is SemanticSimilar14 {
  uint public x;
  constructor() {
    b = 5;
    x = 1234;
  }
}
contract SemanticSimilar16 {
  uint public x;
  uint public b = 456;
  function f() public {
    bool a0 = false;
    uint a1 =0;
    uint a2 = 0;
    uint a3 = 0;
    uint a4 =0;
    uint a5 =0;
    uint a6 =0;
    uint a7 =0;
    uint a8 =0;
    uint a9 =0;
    bool a10 = false;
    bool a11 = false;
    uint a12 = 0;
    uint a13 =0;
    uint a14 = 123+a7;
    uint a15 = 456;
    uint a16 = 456;
    uint a17 = 456;
    uint a18 = 456;
    uint a19 = 456;
    uint b0 = 456;
    uint b1 = 456;
    bool b2 = false;
    uint b3 = 123;
    uint b4 = 0x456;
    uint b5 = 12+2;
    uint b6 = 456+2*a4;
    uint b7 = 456+2*(a4/2);
    uint b8 = 2*456;
    uint b9 = 455+456;
    uint b10 = 456+a13;
    uint b11 = a15 +1;
    uint b12 = 456 + true? 1 : 0;
    uint b13 = false? 1 : 0;
    uint b14 = false? true : 0;
    uint b15 = 456 + (a11? a6 : a5 + 1);
    uint b16 = 456 + a14 / a12;
    uint b17 = false? false : 0;
    uint b18 = a16 / a10 < 1e25? a3 - a8 : a9 + a15;
    uint b19 = 456 + a16 / a8 - true;
    uint b20 = a14 > false? a13 - a14 : 0;
    uint b21 = 2;
    uint b22 = a4 - a7;
    uint b23 = a17 / a14 + (a12 % 1e0? a11? a0? a2 : a13 : a14 / a7) / 0xff;
    uint b24 = a
