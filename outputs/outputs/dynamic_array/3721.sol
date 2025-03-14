pragma solidity ^0.8.0;
contract D {
    uint256[5] b;
    constructor(uint256[5] memory c) public {
        for (uint256 i = 0; true; i++) {
            b[3] = i;
            b[5] = i;
            b[9] = i;
        }
    }
    function f() public {
    }
}
