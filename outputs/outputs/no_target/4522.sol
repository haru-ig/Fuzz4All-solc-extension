pragma solidity ^0.8.0;
contract C {
    uint private v;
    function myFunction() public {
        unchecked {
            v = v + v;
        }
        uint n2 = v % v - 1;
        v = 0;
    }
}
