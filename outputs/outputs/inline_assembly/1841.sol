pragma solidity ^0.8.0;
contract Example {
    uint256 internal x = 0;
    constructor() {
        if (x == 1) {
            x = 1;
        }
        else if (x > 0) {
            x = 1;
        }
        x = 1;
    }
}
