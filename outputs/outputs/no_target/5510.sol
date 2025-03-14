pragma solidity ^0.8.0;
contract O {
    uint public x;
    mapping(uint=>uint) public y;
    function f() public {
        if (x == 10)
            x = 11;
        else
            x = x + 11;
    }
}
