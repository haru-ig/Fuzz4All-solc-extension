pragma solidity ^0.8.0;
contract Mutater26 {
    address public address_address;
    address[] public array;
    mapping (uint => uint) public arrMap;
    constructor(address _address) {
        addresses[_address].push(_address);
    }
    function getAddresses(address _address) public view returns (address[] memory) {
        return addresses[_address];
    }
    function addAddresses(address[] memory _addresses) public returns (address[] memory) {
        array = _addresses;
        return address_address == array[2]?new address[](3):new address[](2);
    }
    function addAdress(address _address) public returns (address[] memory) {
        if (address_address == array[2]) {
            uint[3] memory storageMap;
            uint i =0;
            for (; i < 3; i++) {
                arrMap[i+1] = 11;
                storageMap[i+1] = 0;
            }
        }
        array.push(_address);
        return _address == array[2]?address_address == address?new address[](3):new address[](2):new address[](1);
    }
}
