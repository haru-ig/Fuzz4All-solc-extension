pragma solidity ^0.8.0;

contract Doesn'tMatchExample {
    /* We don't want the tests to be able to access private variables or constants here. */
    function doesNotMatchExample() public {}
}

contract UsesReceiveExample {

  function usesReceiveExample()  public payable {
  }
}
