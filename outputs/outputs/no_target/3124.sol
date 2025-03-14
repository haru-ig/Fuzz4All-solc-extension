pragma solidity ^0.8.0;
contract fourth{
    uint public v;
    function f() public {
        v = 0;
        uint x = v + v;
    }
}
