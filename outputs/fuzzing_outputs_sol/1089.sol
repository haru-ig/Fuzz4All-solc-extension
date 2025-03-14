pragma solidity ^0.8.0;
contract ComplexMutation0 {
    function callers(uint256 arg) public {
        uint256 f = 1;
        f = f + 1;
        uint256 x = 0;
        x = arg + 1;
        arg = arg + f;
        f = x;
        caller(arg);
    }
}
