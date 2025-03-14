pragma solidity ^0.8.0;
contract NonMutatedSemanticallyEquivalentAssemblyExample33 {
  bytes payable x;
  bytes memory y;
  function main() public pure {
      x.payable();
      x.payable();
      x.payable();
      x.memory();
      x.memory();
      x.memory();
      x.memory();
      x.memory();
  }
}
