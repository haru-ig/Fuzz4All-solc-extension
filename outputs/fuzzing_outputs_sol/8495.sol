pragma solidity ^0.8.0;
contract CallerExample6 {
    uint x;

    constructor () {
        x = 0;
    }

    function subtract(uint y) public pure returns (uint) {
        return x - y;
    }
}

contract CallerExample7 {
    uint x;

    function subtract(uint y) public pure returns (uint) {
        return x - y;
    }

    fallback () external payable returns (uint) {
        return x;
    }
}
