pragma solidity ^0.8.0;
struct Immutable {
  uint x;
}
contract MutatedSemanticallyEquivalentAssemblyExample {
  Immutable mutable;

  function main() public pure {
      Immutable memory x;
      immutable.x = 2;
      mutable.x = 3;

  }
}
