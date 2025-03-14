pragma solidity ^0.8.0;
contract EquivalentMutated20 {
    uint x = 0;

    constructor(uint y) {
        x = y;
    }

    function setX(uint y) {
        x = y;
    }
}
