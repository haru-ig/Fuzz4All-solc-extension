pragma solidity ^0.8.0;

pragma solidity 0.8;
contract SemanticEquivalent
{
  modifier test()
  {
    a = 17;
    b = 2;
    c = 5;
    test2();
    emit emitData(g, f, h, c, d, e);
    _;
  }
  uint8 public a;
  uint8 public b;
  uint64 public c;
  uint64 public d;
  uint256 public e;
  uint256 public f = 16;
  uint256 public g;
  uint256 public h;

  function test2() private pure { a = 16; }
  function testNonPayable() private pure { d = 3; }

  function emitData(uint256 _g, int8 _f, uint256 _h, uint64 _c, uint64 _d, uint256 _e)
  {
    (g, f, h) = (_g, _f, _h);
    c = _c;
    d = _d;
    e = _e;
  }

  receive() external payable {}
}
