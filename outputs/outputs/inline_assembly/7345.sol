pragma solidity ^0.8.0;
contract SemanticlyEquivalent {
  int constant constant1 = 10;
  int constant constant2 = 15;
  int constant constant3 = 9;
}
contract RevertMutations {
  uint constant constant1 = 10;
  uint constant constant2 = 10;
  uint constant constant3 = 190;
  uint constant constant4 = 90;
}
