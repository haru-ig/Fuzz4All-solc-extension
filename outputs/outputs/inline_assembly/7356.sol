pragma solidity ^0.8.0;
contract Semantically_equivalent_program {
  uint constant constant1 = 10 = now;
  uint constant constant2 = 11;
  uint constant constant3 = 12 - 2;
  uint constant constant4 = 13 - 2 > 10? 11 : 11;
  uint constant constant5 = 13 + 2;
  uint constant constant6 = 13 ^ 2;
  uint constant constant7 = 13 * 2;
  uint constant constant8 = 13 / 2;
  uint constant constant9 = 13 % 2;
  uint constant constant10 = 10;
  uint constant constant11 = 20 + constant10 * 5 - 5;
  uint constant constant12 = (10 * 5) + 6;
  uint constant constant13 = 2 * constant3 / 2;
  uint constant constant14 = constant6 < constant7;
}
