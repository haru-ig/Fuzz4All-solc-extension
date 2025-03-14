pragma solidity ^0.8.0;
contract Mutated {
    uint x;
    function f1() public pure returns (uint) {

        return x;
    }
    function f2() public pure returns (uint) {

        x = x + 1;
        return x;
    }
}
