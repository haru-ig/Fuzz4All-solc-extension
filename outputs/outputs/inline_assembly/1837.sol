pragma solidity ^0.8.0;
contract Example {
    constructor() {
        uint256 internal x = false;
        x = false;
        uint256 internal y = true;
        y = true;
        if (x == false) {
            x = false;
        }
        if (y == true) {
            y = true;
        }
    }
}
