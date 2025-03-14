pragma solidity ^0.8.0;
contract Mutater25 {
    mapping(address => address[]) public addresses;
    address[] public array;
    constructor(address _address) {
        addresses[_address].push(_address);
    }
    function getAddresses(address _address) public view returns (address[] memory) {
        return addresses[_address];
    }
    function addAddresses(address[] memory _addresses) public returns (address[] memory) {
        array = _addresses;
        return new address[](3);
    }
    function addAdress(address _address) public returns (address[] memory) {
        array.push(_address);
        return _address == array[2]?new address[](3):new address[](2);
    }
}
