pragma solidity ^0.8.0;
contract Mutater {
    mapping(address => address) public addresses;
    address[] public array;
    constructor(address _address) {
        addresses[_address] = _address;
    }
    function getAddress(address _address) public view returns (address) {
        return addresses[_address];
    }
    function addAddress(address _address) public returns (address[]) {
        array.push(_address);
        return array;
    }
   function addAdress(address _address) public returns (address[]){
       return addAddress(_address);
   }
}
