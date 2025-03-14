pragma solidity ^0.8.0;
contract SemanticallyEquivalentArray{
  uint[1] private test = [ 123123 ];
  uint private c;
  function SemanticallyEquivalent(
    uint x,
    uint y
  ) public pure {
      c *= y;
  }
}
