pragma solidity ^0.8.0;
contract Mutated{
    uint x;
    constructor() { }
    function getResult(uint x) public {
        x = x * 5;
        bytes32 x1 = keccak256(abi.encode(x));
        x = x1 - x1;
        x = x / 2 + x1 - x1;
        x = x * 25;
        x = x2 / keccak256(abi.encode(x));
        x = x * 100 + x2 - x2;
        x = x * x + x;
        x = x + x + 30 + (x << 20) + 1;
        x = 1 + x;
        x2 = keccak256(abi.encode(x));
        x2 = x2 - x2;
        x2 = x2 + x1 - x1;
        x2 = x2 * 100 + x - x;
        x2 = x2 * x2 + x2;
        x2 = x2 + x;
        x2 = x2 + x + 60 + (x2 << 20) + 1;
        x2 = x2 * (x2 + 100);
        x3 = keccak256x256(abi.encode(x2)) + x2 - x2 + x2;
        x2 = x3 * 7;
        x2 = x2 + x2 + 4 + (x2 << 20) + (x3 << 20);
        x2 = x1 + (x2 + x2);
        x2 = x2 + (x2 + x1) + x;
        x2 = x2 + (x1 + x) + x1 + (x + x + x + x + 210000);
        x2 = x2 * x2 + x;
        x2 = x2 + x1 + (x + x);
        x2 = x2 * 100000;
        x2 = x1 * (x2 + x) + x2 * (x2 + x) + (x2 / x - x);
        x2 = x2 / x - x;
        x2 = x2 * (x1 + (x2
