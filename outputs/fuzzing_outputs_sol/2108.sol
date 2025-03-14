pragma solidity ^0.8.0;
contract Mutater14 {
    mapping(address => address[]) public addresses;
    constructor(address _address) {
        addresses[_address] = new address[](2);
        addresses[_address][0] = _address;
        addresses[_address][1] = _address;
    }
    function getAddresses(address _address) public view returns (address[] memory) {
        address[] memory addresses_ = new address[](1);
        addresses_[0] = _address;
        return addresses_;
    }
}
