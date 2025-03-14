pragma solidity ^0.8.0;

contract SomeMath {
    function square(uint x) external pure returns (uint xPow2) {
        xPow2 = x * x;
    }
}
