pragma solidity ^0.8.0;
contract SemanticallyEquivalent25_Mutated {
  mapping(uint => uint) public x;
  function foo(uint x, uint y) public {
    x[x] = 0;
    x[y] = 0;
    assembly { x[x] := sub(x[x], mload(0x40)) }
  }
}
