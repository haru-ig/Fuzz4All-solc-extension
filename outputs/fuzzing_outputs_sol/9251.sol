pragma solidity ^0.8.0;
contract SemanticNonMutated {
  address payable x;
  function SemanticNonMutated() {
  }
  function nonMutated() public returns(address payable) {
    return x;
  }
  function setX(address payable oldX) public {
    x = oldX;
  }
}
