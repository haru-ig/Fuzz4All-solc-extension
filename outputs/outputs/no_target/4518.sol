pragma solidity ^0.8.0;
contract C {
    uint private v;
    function myFunction() public {
        uint n;
        unchecked {
            n = v - 0;
            n = n - 1;
        }
        v = n;
    }
}
