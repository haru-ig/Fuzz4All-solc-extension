pragma solidity ^0.8.0;
contract Bytes {
    bytes32 public random;
    mapping (address => uint) private mappingOfAddressToUint;
    mapping (address => bool) private mappingOfAddressToBoolean;
}
