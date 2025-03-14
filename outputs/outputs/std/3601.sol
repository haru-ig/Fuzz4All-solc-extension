pragma solidity ^0.8.0;
contract Array {
    uint[] private arrayOfUints;
    uint[] private arrayOfUnsignedInts;
    uint[] private arrayOfSignedInts;
    address[] private arrayOfAddresses;
    mapping (address => uint) private mappingOfAddressesToAccountBalance;
    mapping (address => uint) mappingOfAddressesToTotalAccountBalance;
    bytes[] private listOfBytes;
    mapping (uint => address) private mappingOfUintsToAddresses;
}
