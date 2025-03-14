pragma solidity ^0.8.0;
contract R {
    uint64 x;
    function f() public {
        x = type(uint160).max;
    }
}
