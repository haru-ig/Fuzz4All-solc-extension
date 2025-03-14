pragma solidity ^0.8.0;
contract SemanticEquivalent
{
  uint8 public a = 10;
  uint16 public b;
  uint64 public c = 10;
  uint128 public d = 10;
  bool public e = true;
  int8 public f;
  int16 public g;
  struct S1
  {
    uint16 field_d;
  }
}
contract Caller
{
  function callWithFallback(uint8 _x, SemanticEquivalent memory _e) public
  {
    _e.a += _x;
    (uint16 _a) = _e.fallback();
    assert(_e.a == _a);
  }
  function callWithoutFallback(uint8 _x, SemanticEquivalent memory _e) public
  {
    _e.a += _x;
    (uint16 _a) = _e.receive();
    assert(_e.a == _a);
  }
  function callWithFallbackAndWriteValue(uint8 _x, SemanticEquivalent memory _e) public
  {
    _e.a += _x;
    (uint16 _a) = _e.receive();
    _e.e = false;
    _e.a -= _x;
    (uint16 _b) = _e.fallback();
    assert(_e.a == _b);
  }
  function callWithoutFallbackAndWriteValue(uint8 _x, SemanticEquivalent memory _e) public
  {
    _e.a += _x;
    (uint16 _a) = _e.receive();
    _e.f = 10;
    _e.d = 20;
    _e.e = false;
    _e.a -= _x;
    (uint16 _b) = _e.fallback();
    assert(_e.a == _b);
  }
}
