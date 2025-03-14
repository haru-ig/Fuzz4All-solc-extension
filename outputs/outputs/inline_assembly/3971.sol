pragma solidity ^0.8.0;
contract SemanticallyEquivalent1010 {
  struct Foo { uint a; uint b;}
  function foo(uint a, uint b) public pure returns (uint)
    { return sub(a-b+0x80,-b-0xff, and(a-a-0x80, and(b, not(0xff)))))}
}

pragma solidity ^0.8.0;
contract SemanticallyEquivalent1012 {
  struct Foo { uint b; uint c;}
  function foo(uint c, uint b) public pure returns (uint)
    { return sub(0x7f, c+0x20, and(b, not(0x7f))))}
}
