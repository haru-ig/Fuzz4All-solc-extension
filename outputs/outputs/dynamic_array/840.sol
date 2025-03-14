pragma solidity ^0.8.0;
contract Pregenerated {
    uint x;
    constructor() {
        x += x;
    }
    function y() public pure returns (uint) {
        return x;
    }
}
