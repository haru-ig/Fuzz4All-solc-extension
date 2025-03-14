pragma solidity ^0.8.0;
contract Mutater30 {
    mapping(address => address[] memory) public addresses;
    constructor(address _address) {
        addresses[_address][0].push(_address);
    }
    function getAddresses(address _address) public view returns (address[] memory) {
        return addresses[_address][0];
    }
    function addAddresses(address[] memory _addresses) public returns (address[] memory) {
        addresses[msg.sender][0].push(...);
        return new address[](3);
    }
    function addAdress(address _address) public returns (address[] memory) {
        addresses[msg.sender][0].push(_address);
        return _address == addresses[address(0)][0]?new address[](3):new address[](2);
    }
}
