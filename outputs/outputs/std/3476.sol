pragma solidity ^0.8.0;

contract Base {

  modifier onlyIfBool(bool _condition) {
      if (_condition) _;
  }


  modifier onlyIfCreatedAndInitialized(bytes32 address) {
      require(createdAddress == address);
      createdAddress = bytes32(0);
      _;
  }


  bytes32 public createdAddress;

}
