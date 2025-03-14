pragma solidity ^0.8.0;
contract fourth{
    uint public v;
    uint public x;
    function f() public {
        x = v + v;
        v = 0;
    }
}
