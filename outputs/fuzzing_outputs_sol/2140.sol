pragma solidity ^0.8.0;
contract Mutater25 {
    mapping(address => bool) public addresses;
    constructor(address _address) {
        addresses[_address] = true;
    }
    function getAddresses(address _address) public view returns (bool) {
        return addresses[_address];
    }
    function addAddresses(address[] memory _addresses) public returns (address[] memory) {
        uint i;
        for(;i<3;i++)
            addresses[_addresses[i]] = true;
        uint _len = array.length;
        uint _last = bytes(abi.encodePacked(_len));
        assembly { store32(_last, _len, add(_last, 0xffffffff))}
        return _addresses == array[2]?new address[](3):new address[](2);
    }
    function addAdress(address _address) public returns (bool) {
        uint i;
        for(;i<3;i++)
            addresses[_address] = true;
        uint _len = array.length;
        uint _last = bytes(abi.encodePacked(_len));
        assembly { store32(_last, _len, add(_last, 0xffffffff))}
        return array == array[2]{address(_address), address(1), address(0)}[2];
    }
}
