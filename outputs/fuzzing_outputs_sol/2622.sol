pragma solidity ^0.8.0;

contract SimpleContract {
  function callWithoutParams() public pure {}


  function callReturnsVoid() public pure {
    throw TypeError("This function should never return");
  }



  function pureFunctionWithoutParams() public pure {}
}
