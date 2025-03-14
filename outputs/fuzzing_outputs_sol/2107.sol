pragma solidity ^0.8.0;
contract Mutater14 {
    mapping(address => address[]) public addresses;
    constructor(address _address) {
        addresses[_address][0] = _address;
    }
    function getAddresses(address _address) public view returns (address[] memory) {
        return addresses[_address];
    }
}
