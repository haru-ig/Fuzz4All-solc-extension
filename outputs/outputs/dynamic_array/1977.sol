pragma solidity ^0.8.0;
contract FunctionalEquivalence_DynamicallySizedArrayAssignment_7 {
    address[] private addresses;
    address public contractAddress;
    constructor(address _address) public {
        contractAddress = _address;
        addresses = new address[](1);
        addresses[0] = contractAddress;
        addresses[1] = contractAddress;
    }
}
