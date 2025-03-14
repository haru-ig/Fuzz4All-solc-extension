pragma solidity ^0.8.0;
contract SemanticEquivalentK23
{
  uint8 a;
  uint8 b;
  uint16 c;
  uint16 d;
  uint8 e;
  constructor(uint16 h)
  {
    c = uint16(h);
    d = uint16(h * 2 + 1);
  }
  function _set_1(uint16 x) returns (uint16)
  {
    uint16 y = c;
    a = x + y;
    e = x - y;
    b = x - c;
    c = x + y * 2;
    return a;
  }
  function _set_2(uint8 x) returns (uint16)
  {
    uint16 y = d;
    c = x + y * 3;
    a = d + x + y; e = x - y;
    b = d + x - c + y;
    d = d - x + y * 2;
    return a;
  }
  function _set_3(uint16 x) returns (uint16)
  {
    uint16 y = e;
    d = x - y;
    c = x * 2 + y; e = x + y * 2;
    a = d | c * 2 + a;
    b = d & c | e * 2 - b;
    return a;
  }
  function _set_4(string memory) returns (uint16)
  {
    uint16 y = e;
    d = e + bool(c); e = d + uint16(uint16(-2 + 1)); x = e + 3 * 1; y = f + 5; g = x - 1311 - y;
    a = 65536 | a;
    b = 8 | x;
    c =  16;
    d =  17 | g;
    e = uint8(5) - 18;
    return a;
  }
  function _set_5() returns (uint16)
  {
    uint16 y = e;
    d = d + uint8((-2 - -1)); e = e + -11 + uint16(19 + 15); x = e - 201;
    a = x - (y + -9 * 18);b = y + 3 * 2;
    { uint16 f; x = a + (-1546 + c) + (-1245 * 3); g = d + +2 + c + 2; return x; }
    g = a + f; a = 4048 | +y + 416;
    b = y + -5 + y - 101;
    return g;
  }
  function test20() returns (uint16)
  {
    uint16 z = e * 3;
    uint16 p =
