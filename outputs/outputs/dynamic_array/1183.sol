pragma solidity ^0.8.0;
contract SemanticIndependenceAndDynamicArray_20 {
    uint[40] public accounts;
    mapping(address => bool) public registeredAddress;

    constructor() {
        setAccountValue(msg.sender, 0);
    }

    modifier containsAddress(address a) {
        require((a in accounts) == true, "containsAddress: Address not in list");
        _;
    }

    modifier isValidAddress(address a) {
        require(containsAddress(a), "isValidAddress failed: Address no in the list");
        _;
    }

    modifier isAdmin(address a) {
        require(registeredAddress[a] == true, "isAdmin failed: address is not authorized");
        _;
    }

    function setAccountValue(address a, uint v) public containsAddress(a) returns (uint x) {
        accounts[a] = v;
        return x;
    }

    function getAccountValue(address a) public containsAddress(a) returns (uint v) {
        v = accounts[a];
        return v;
    }
}
