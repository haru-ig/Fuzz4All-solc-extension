pragma solidity ^0.8.0;
contract C1 {
    constructor() {
        address a = 0xDEADBEEF;
        for (uint i = 0; i < 3; i += 1) {
            a.transfer(0x1DEE9505);
        }
    }
}
