pragma solidity ^0.8.0;
contract O {
    uint public x;
    uint public y;
    function f() public {
        x = 1;
        uint z = x + y;
        uint a = uint8(x);
    }
}
