pragma solidity ^0.8.0;
contract Mutater13 {
    mapping(address => address[]) public addresses;
    constructor(address _address) {
        addresses[_address].push(_address);
    }
    function getAddresses(address _address) public view returns (address[] memory) {
        return addresses[_address];
    }
}
