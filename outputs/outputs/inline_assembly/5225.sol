pragma solidity ^0.8.0;
contract C {
  address payable to;
  bytes32 public key;
  constructor(address payable payee, bytes32 aKey) public {
    to = payee;
    key = aKey;
  }
  function getKey() public view returns (bytes32 key ) {
    return key;
  }
  function setKey(bytes32 key) public {
    key = key;
  }
}
