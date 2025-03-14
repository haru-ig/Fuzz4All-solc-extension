pragma solidity ^0.8.0;
contract Example {
    uint constant x = 0;
    uint constant y = 0;
    function f() public {
        x = x + 10;
        y += x + 10;
    }
}
