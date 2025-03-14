pragma solidity ^0.8.0;
contract c {
  function get() public pure returns (string memory) {
    assembly {
      mstore(0, 65, 0, 0, 0, 0, 0, 0, 100)
    }
    return string(5) + c.get();
  }
}
