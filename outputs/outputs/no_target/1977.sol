pragma solidity ^0.8.0;
contract NoMutatedSematic {
    uint public x;

    function initialize() public {
        x = 0;
    }

    function f() public {
        x += 7;
    }
}
