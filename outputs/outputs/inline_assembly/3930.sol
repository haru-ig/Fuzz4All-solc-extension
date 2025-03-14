pragma solidity ^0.8.0;
contract SemanticallyEquivalent {
  function foo(uint x, uint y) public pure {
    uint result = mul(x, y);
    assembly { return(result, 0x00) }
  }
}
