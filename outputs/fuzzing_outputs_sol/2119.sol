pragma solidity ^0.8.0;
contract Mutater14 {
    address[] public array;
    address public lastAddress;
    mapping(address => address[] memory) public addresses;
    address[] public addresslist;
    constructor(address _lastaddress) {
        lastAddress = _lastaddress;
    }
    function modifyArray(address _address) public returns (address[] memory) {
        array.push(_address);
        if (_address == lastAddress) {
            return addresslist;
        }
        return array;
    }
    function getAddresses(address _address) public view returns (address[] memory) {
        return addresses[_address];
    }
    function addAddresses(address[] memory _addresses) public returns (address[] memory) {
        if (_addresses[2] == lastAddress) {
            addresses[_addresses[2]].push(_addresses[0]);
        }
        addresses[_addresses[2]].push(_addresses[0]);
        return addresses[_addresses[2]];
    }
    function addAdress(address _address) public returns (address[] memory) {
        addresses[_address].push(_address);
        return _address == array[2]?addresslist:addresslist;
    }
}

pragma solidity ^0.8.0;
contract Mutater14 {
    function() external payable {
    }
}
