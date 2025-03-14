pragma solidity ^0.8.0;
contract CoC{
    int x = 0;
    uint public y = 100;
    function g(uint d) public {
        y = y + x / d;
    }
}
