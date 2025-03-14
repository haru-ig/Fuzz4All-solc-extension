pragma solidity ^0.8.0;
contract C40_bug405547981132 {
    uint88 a = -2 ** 48;
        function get() view external returns (uint88 b) { return uint88(((uint88(uint(a)) | uint88(uint(a))) / 100)); }
        function set() view public { a++; }
}
