pragma solidity ^0.8.0;
contract Caller {
  function call() public view returns(uint, bytes memory) {
    return (1, "Hello world");
  }
}
