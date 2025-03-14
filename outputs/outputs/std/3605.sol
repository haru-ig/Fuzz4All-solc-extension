pragma solidity ^0.8.0;
contract Mutation {
    uint[] private arrayOfUints;
    bytes[] private arrayOfBytes;
    address[] private arrayOfAddresses;
    mapping (uint => address) private mappingOfUintsToAddresses;
    mapping (uint => address) private mappingOfUintsToUniqueAddresses;
}
