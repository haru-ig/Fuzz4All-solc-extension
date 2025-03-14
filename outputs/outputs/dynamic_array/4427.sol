pragma solidity ^0.8.0;
contract Mutated2 {
  function test1() public returns (address[] memory) {

  }

}

pragma solidity ^0.8.0;
contract Mutated3 {
  M mutant;
  M function getMutableReference() public returns (M) {
    return mutant;
  }
  function setMutableReference(M newMutant) public returns (M) {
    mutant = newMutant;
    return mutant;
  }
}
contract M {

}
