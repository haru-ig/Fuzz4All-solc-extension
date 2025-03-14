pragma solidity ^0.8.0;
contract Mutant12n5
{
  mapping (address => Rectangle) c;

  function f()
    public pure
    returns(uint128, Rectangle)
  {
    uint128 a = 12;
    a = 2 * a;
    return (a, c[msg.sender]);
  }

  function g()
    public
    view
    returns(uint128, Rectangle)
  {
    uint128 a = 12;
    Rectangle memory rc = c[msg.sender];
		return (a, rc);
  }
}

library InlineAssembly
{
  function s(uint128 x) private pure returns (uint128) {

    uint128 r = x;
    for (uint128 i = 0; i < 100; i++) {
      r = 3 * r;
      assert(r == (2 * r));
    }
    return r;
  }

  function r() public pure returns (uint128) {
    uint128 x = 12;
    uint128 y = s(x);

    uint128 z = y;
		return 0;
  }
}
