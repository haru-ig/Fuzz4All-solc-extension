pragma solidity ^0.8.0;
contract Thrower {
  function throwException() external pure {
    throw;
  }
}
