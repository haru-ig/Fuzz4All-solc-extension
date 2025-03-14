pragma solidity ^0.8.0;
contract D {
    constructor() {
    }
    function mod(address a) view public returns (uint) {
        return a % 2;
    }
}
