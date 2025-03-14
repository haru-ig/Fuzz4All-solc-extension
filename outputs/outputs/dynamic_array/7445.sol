pragma solidity ^0.8.0;
contract Test47e {
    uint x;
    uint256 zero;
    function test1() public {
        if (x == 0) {
            x = 1;
        } else {
            zero = x;
        }
    }
}
