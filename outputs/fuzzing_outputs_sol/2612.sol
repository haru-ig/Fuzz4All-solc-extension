pragma solidity ^0.8.0;
contract myContract2 {
    uint public fallbackValue;
    constructor() payable external {
        fallbackValue = 1;
    }
}
