pragma solidity ^0.8.0;

contract Test5 {

    constructor(uint public x) {

    }
    modifier test() {
        return this;
    }

    constructor(uint a, uint b, uint public x) {
        if (a < b * 2) {
            x += 3;
            return;
        }
    }
    modifier test2() {
        x += 3;
        return this;
    }

    function test3() public test test2() returns (uint256);
}
