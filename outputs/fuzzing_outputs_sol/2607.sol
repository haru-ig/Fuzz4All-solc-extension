pragma solidity ^0.8.0;
contract myContract {
    uint[] public fallbackValues;
    constructor() payable {
        fallbackValues = new uint[](1);
        fallbackValues[0] = 1;
    }
}
