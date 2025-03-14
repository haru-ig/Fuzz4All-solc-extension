pragma solidity ^0.8.0;
contract Mutate0015c {
    uint256 input;
    modifier m() {
        input = input * 10;
        _;
    }
    function callMe() public m() {
        assert(false);
    }
}
