pragma solidity ^0.8.0;

contract MutatingAdd {
    uint b;
    uint a;

    function mutate() public {
        b = 1;
        a = 2;
    }
}
