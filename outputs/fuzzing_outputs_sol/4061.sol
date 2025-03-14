pragma solidity ^0.8.0;
contract AnotherMutantFallback {
  function myFallback(uint256 _amount) public pure {
    return _amount + 1;
  }
}
