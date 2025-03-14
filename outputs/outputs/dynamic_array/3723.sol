pragma solidity ^0.8.0;
contract D {
    uint256[5] public b;

    constructor(uint256[5] calldata c) public {
        b = c;
    }
    function f() public {
    }
}
