pragma solidity ^0.8.0;
contract Mutater24 {
    mapping(address => address[]) public addresses;
    address[] public array;
    uint public counter;
    constructor(address _address) {
        addresses[_address].push(_address);
        counter = 0;
    }
    function getAddresses(address _address) public view returns (address[] memory) {
        return addresses[_address];
    }
    function addAddresses1(address[] memory _addresses) public returns (address[] memory) {
        array = _addresses;
        return new address[](3);
    }
    function addAdress1() public returns (address[] memory) {
        array.push(address(this));
        return _address == array[2]?address(this):new address[](2);
    }
}
address[] memory _addresses;
constructor() {
        _addresses.push(address(this));
        _addresses.push(address(this));
        _addresses.push(address(this));

    }
    function getAddresses(address _address) public view returns (address[] memory) {
        return addresses[_address];
    }
    function addAddresses(address[] memory _addresses) public returns (address[] memory) {
        array = _addresses;
        return new address[](3);
    }
    function addAdress() public returns (address[] memory) {
        array.push(address(this));
        return _address == array[2]?address(this):_address == address(888)?address(this):(address(this),new address[](2));
    }
}
