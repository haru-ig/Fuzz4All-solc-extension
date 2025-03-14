pragma solidity ^0.8.0;

contract StoreArrayAddress {

    address[100] private store;

    uint public element = 3;


    constructor() {
        for (uint i = 0; i < 100; i++) {
            store[i] = 0;
        }
    }


    function setElement(uint i, address newAddress) public {
        require(i<100);
        store[i] = newAddress;
    }

    function getElement (uint i) public view returns (address) {
        require(i<100);
        return (store[i]);
    }
}
