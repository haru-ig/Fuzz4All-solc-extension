pragma solidity ^0.8.0;
contract Mutater16 {
    address public targetAddress;
    address[] public addresses;
    constructor(address _address) {
        targetAddress = _address;
    }
    function modifyAddresses() public {
        addresses.push(address(1));
    }
}
