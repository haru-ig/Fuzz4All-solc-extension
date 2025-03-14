pragma solidity ^0.8.0;
contract Bytes {
    bytes public arrayOfBytes_current;
    mapping (address => uint) private mappingOfAddressToUint;
    mapping (address => bool) private mappingOfAddressToBoolean;
}
