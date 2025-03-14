pragma solidity ^0.8.0;
contract D is B, Test {
    constructor() public {
        setAdmin(address(0));
    }
}
