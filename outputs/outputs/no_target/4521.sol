pragma solidity ^0.8.0;
contract C {
    uint private v;
    function myFunction() public {
        uint n;
        unchecked {
            n = v - 0;
            n = n - 1;
        }
        n += n + 1;
        unchecked {
            v = n;
            v = n * 2;
            v = n + 2;
            v = n + 5;
            v = v + 6;
            v = v + 45;
            v = v * 10;
            v = v * 3;
            v = v + 4*n;
            v = n * n;
        }
        v = n;
    }
}
