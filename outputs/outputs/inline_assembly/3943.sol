pragma solidity ^0.8.0;
contract SemanticallyEquivalent5 {
  function foo(uint x, uint y) public pure {
    assembly {
      x := add(x, 1)
      y := add(y, 1)
    }
  }
}
contract SemanticallyEquivalent5a{
  function foo(uint x, uint y) public pure {
    assembly {
      x := add(x, 1)
      y := add(y, 1)

      if mload( 0x40 ) > 0 {
        mstore( 0x40, sub( 0x40, 1) )
        revert(0, 1 )
      }
    }
  }
}
contract SemanticallyEquivalent6{
  function foo(uint x, uint y) public pure {
    assembly {
      mstore( 0x40, sub( 0x40, 1) )
      mstore( 0x40, and( 0x40, y) )
    }
  }
}
contract SemanticallyEquivalent7{
  function foo(uint x, uint y) public pure {
    assembly {
      mstore( 0x40, sub( 0x40, 3) )
      mstore( 0x40, or( 0x40, x) )
      mstore( 0x40, and( 0x40, x) )
      mstore( 0x40, andn( 0x40, x) )
    }
  }
}
contract SemanticallyEquivalent8{
  function foo(int x, uint y) public pure {
    uint x1 = x + uint(y);
    uint x2 = x + mload(0x400);
    uint x3 = x + x;
    uint x4 = x + add( uint(x), uint(y) );
    uint x5 = x + and(uint(
