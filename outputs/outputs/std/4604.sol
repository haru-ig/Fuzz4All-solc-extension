pragma solidity ^0.8.0;
contract Mutated {
    uint[] public data;
    address[] public addresses;
    constructor() public {
        data.push(99);
    }
}
