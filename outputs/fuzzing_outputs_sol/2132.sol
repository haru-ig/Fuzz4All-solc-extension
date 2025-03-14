pragma solidity ^0.8.0;
contract Mutater7 {
    mapping(address => address[]) public arrayAddresses;
    address[] public arrayAdress;
    constructor(address _address) {
        arrayAddresses[_address].push(_address);
    }
    function getArrayAdress(address _address) public view returns (address[] memory) {
        return arrayAddresses[_address];
    }
    function addArrayAdress(address[] memory _arrayAddresses) public returns (address[] memory) {
        arrayAdress = _arrayAddresses;
        return new address[](2);
    }
    function addArrayAdress(address _address) public returns (address[] memory) {
        arrayAderess.push(_address);
        return _address == arrayAdress[1]?new address[](2):new address[](1);
    }
}
