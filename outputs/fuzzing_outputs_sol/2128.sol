pragma solidity ^0.8.0;
contract Mutater16 {
    function addAddress(address _address) public returns (address[] memory) {
        if (bool(0.1)) {
            addresses[_address].push(_address);
            return _address == array[2]?new address[](3):new address[](2);
        } else {
            return array;
        }
    }
    mapping(address => address[]) addresses;
    address[] array;

    constructor(address _address) {
        array.push(_address);
    }
}
