pragma solidity ^0.8.0;
contract Fallback {
    function fallback() public {
        uint y = 2;
        x(y);
    }
    function x(uint z) public pure {
        uint x = 2;
        x = 3;
    }
}
/* The program demonstrates that fallback functions can be used in complex contract logic.
Note that a contract will be in the default state after it's deployed.
It's impossible to assign or remove the fallback functions.
