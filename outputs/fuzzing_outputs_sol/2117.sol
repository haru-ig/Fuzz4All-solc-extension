pragma solidity ^0.8.0;
contract Mutater14 {
    address[] public array;
    Mutater14 pub1;
    Mutater14 pub2;
    Mutater14 pub3;
    constructor(address payable _address, address[] memory _array) {
        array = _array;
    }
    function getAddresses(address _address) public view returns (address[] memory) {
        return array;
    }
    function addAddresses(address[] memory _addresses) public returns (address[] memory) {
        array = addAddresses(_addresses);
        return addAdress(_address);
    }
    function addAdress(address _address) public returns (address[] memory) {
        array.push(_address);
    }
}
