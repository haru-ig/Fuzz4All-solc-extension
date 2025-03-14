pragma solidity ^0.8.0;
contract Mutate0015a {
    uint256 input;
    constructor() { input = 2; }
    modifier m() {
        input = input + 6;
        _;
    }
    function callMe() m public {
        assert(false);
    }
}
