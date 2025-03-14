pragma solidity ^0.8.0;
contract MyContract {
  function myContract() public {
    assembly {

      mstore(0x00, 32)

      mload(0x00) add 0x10
    }
  }
}
