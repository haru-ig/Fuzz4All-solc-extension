pragma solidity ^0.8.0;
contract Greet {
  function greet() public pure {
    assembly {
      let greeting := mload(0x40)
      mstore(greeting, 666)
    }
    return;
  }
}
