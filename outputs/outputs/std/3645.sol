pragma solidity ^0.8.0;
contract MutatedAddresses {
    uint[] private privateInts;
    uint[] public publicInts;
    uint public constant publicInt_new1 = 3 * 3;
}
