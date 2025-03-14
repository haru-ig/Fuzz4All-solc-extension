pragma solidity ^0.8.0;
contract O {
    uint public x;
    mapping(uint=>uint) public y;
    function f() public {
        uint a = 10;
        a = x;
    }
}
