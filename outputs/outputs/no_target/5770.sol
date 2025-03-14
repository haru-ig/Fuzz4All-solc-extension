pragma solidity ^0.8.0;
contract Bar {
    constructor() {
        uint256 x = -2e3;
        require(g(x) % 2 == 1);
        log("foo", x);
    }
}
