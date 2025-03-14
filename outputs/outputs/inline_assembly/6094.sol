pragma solidity ^0.8.0;
contract MutatedSemanticallyEquivalentAssemblyExample12 {
  struct Original {
      uint256 x;
  }
  contract Mutated {
      Original memory x;
      function main() public view returns (original.x) {
          original.x.x++;
          original.x.x++;
      }
  }
}
