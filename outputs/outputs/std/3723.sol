pragma solidity ^0.8.0;
contract Array {
    uint256[5] public array;
    constructor() {
        uint256 x = 1;
        for (uint256 i = 0; i < 5; i++) {
            array[i] = x += 1;
        }
    }
}
