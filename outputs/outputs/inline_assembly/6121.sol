pragma solidity ^0.8.0;
contract NonMutatedSemanticallyEquivalentAssemblyExample2 {
  uint256 x=20;
  function x() public pure {
      x.mul(x);
  }
}
