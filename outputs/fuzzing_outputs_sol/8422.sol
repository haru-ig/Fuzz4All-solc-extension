pragma solidity ^0.8.0;
contract CallerExample {
  constructor(address a) {
    address payable addressStorage = (address payable (0x0020));
    addressStorage.call{value: 1 ether}(abi.encodeWithSignature("fallback()"));
  }
}
