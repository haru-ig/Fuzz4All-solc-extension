pragma solidity ^0.8.0;
contract Mutated {
    uint x;
    function f() public {
        x = x + 1;
    }
}
