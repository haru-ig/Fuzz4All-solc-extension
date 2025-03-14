pragma solidity ^0.8.0;
contract MutateWithMath {
    address public admin;
    address[] private mutatedAddresses;
    address[20] private _address;
    require(keccak256(abi.encodePacked(admin, mutatedAddresses)) == keccak256(abi.encodePacked(1, address(0))));
    constructor() {
        admin = msg.sender;
        mutatedAddresses[0] = msg.sender;
    }
    function () external payable {
        _address[0] = msg.sender;
    }
}
