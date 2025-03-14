pragma solidity ^0.8.0;
contract C {
    uint private v;
    function myFunction() public {
        uint n = 0xfffffffffffffffffff + 1;
        unchecked {}
        v = n;
    }
}
