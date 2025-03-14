pragma solidity ^0.8.0;
contract Mutate0015b {
    uint256 input;
    modifier m() {
        input = input * 5;
        _;
    }
    function callMe() m public {
        assert(false);
    }
}
