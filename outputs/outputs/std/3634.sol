pragma solidity ^0.8.0;
contract MutatedBytes {
    bytes public arrayOfBytes_current;
    mapping (address => uint) private mappingOfAddressToUint;
    mapping (address => bool) private mappingOfAddressToBoolean;
}
