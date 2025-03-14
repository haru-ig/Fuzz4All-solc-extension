pragma solidity ^0.8.0;
contract c {
  string[] memory dynarray;
  function get() public return(string memory) {
    return dynarray[0];
  }
}
