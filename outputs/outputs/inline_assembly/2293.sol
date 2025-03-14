pragma solidity ^0.8.0;
contract Mutation
{
    struct AddressArray
    {
        address[] addr;
    }
    address[] public addr;
    uint public addrNum;
    constructor(uint _addrNum) {
        addrNum = _addrNum;
    }
