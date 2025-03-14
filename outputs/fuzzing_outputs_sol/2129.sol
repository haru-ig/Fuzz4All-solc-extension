pragma solidity ^0.8.0;
contract Mutater {
    address[] public address = new address[](3);
    address[] public addresses = new address[](3);
    uint[] calldata amounts = new uint[](3);
    address[] calldata addresses = new address[](3);
    constructor(uint _amount, address _address) {
        amounts[2] = _amount;
        addresses[2] = _address;
        address[3] = _address;
    }
    constructor(address _address) {
        addresses[2] = _address;
        address[3] = _address;
    }
    function getAddresses(uint _index) public view returns (address[] memory) {
        return addresses[_index];
    }
    function getAmounts(uint256 _index) public view returns (uint) {
        return amounts[_index];
    }
    function getAdressFromAddress(uint256 _index) public view returns (address) {
        return addresses[_index];
    }
    function addAddress(uint _amount, address _address) public returns (address[] memory) {
        addresses[_amount] = _address;
        return new address[](3);
    }
    function addAddress(address _address) public returns (address[] memory) {
        addresses[2] = _address;
        return new address[](2);
    }
}
