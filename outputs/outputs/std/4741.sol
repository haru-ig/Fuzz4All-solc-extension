pragma solidity ^0.8.0;
contract C {
  function f() public pure returns (bytes memory) {
    return (bytes(_g).add(new bytes(1)));
  }
  function g() public pure returns (string memory) {
    return new string(0, 1);
  }
}
