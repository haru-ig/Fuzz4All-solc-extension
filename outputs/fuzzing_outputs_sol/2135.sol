pragma solidity ^0.8.0;
contract Mutater {
    mapping (address => address[]) public addresses;
    address[] public array;
    constructor(address _address) {
        addresses[_address].push(_address);
    }
    function getAddresses(address _address) public view returns (address[] memory) {
        return addresses[_address];
    }
    function addAddresses(address[] memory _addresses) public returns (address[] memory) {
        array = _addresses;
        return _addresses;
    }
    function addAdress(address _address) public returns (address[] memory) {
        array.push(_address);
        return _address == array[2]? _address : _address == array[1]? _address : _address == array[0]? new address[](3) : new address[](2);
    }
}
