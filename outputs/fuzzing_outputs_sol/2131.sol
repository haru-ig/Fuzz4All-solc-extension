pragma solidity ^0.8.0;
contract Mutater25 {
    constructor(address _address) external {
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
        return array == new address[](2)?_address==array[2]?new address[](3):new address[](2):address[](3);
    }
}
