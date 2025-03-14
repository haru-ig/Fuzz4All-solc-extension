pragma solidity ^0.8.0;
contract Mutator4 {
    constructor () {
        if (x > 0) {
            if (x < 4) {
                revert("x too low.");
            }
        } else {
            revert("x too high.");
        }
    }
}
