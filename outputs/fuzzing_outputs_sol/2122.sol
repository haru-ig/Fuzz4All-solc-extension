pragma solidity ^0.8.0;
contract Mutater15 {
    mapping(address => address[]) public addresses;
    address[] public address;
    constructor(address _address) {
        addresses[_address].push(_address);
    }
    function getAddresses(address _address) public view returns (address[] memory) {
        return addresses[_address];
    }
    function addAddresses(address[] memory _addresses) public returns (address[] memory) {
        address = _addresses;
        return address;
    }
    function addAdress(address _address) public returns (address[] memory) {
        address = _address;
        address.push(_address);
        return address;
    }
}
