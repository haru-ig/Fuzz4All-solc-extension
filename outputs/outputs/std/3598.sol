pragma solidity ^0.8.0;
contract Array {
    uint[] private arrayOfUints;
    bytes[] private arrayOfBytes;
    address[] private arrayOfAddresses;
    mapping (address => uint) private mappingOfAddressesToAccountBalance;
    mapping (address => uint) mappingOfAddressesToTotalAccountBalance;
    mapping (address => bytes[]) private mappingOfAddressesToBytesArrays;
    mapping (uint => address) private mappingOfUintsToAddresses;
    mapping (uint => address) private mappingOfUintsToUniqueAddresses;
}
