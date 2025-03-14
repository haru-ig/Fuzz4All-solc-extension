pragma solidity ^0.8.0;
contract C {

    uint private v;
    function myFunction() public {
        uint n;
        unchecked {
            n = 0 - v;
            n = 1 - n;
        }
        v = n;
    }
}
