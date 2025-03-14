pragma solidity ^0.8.0;
contract C {
    function foo(uint8 x) external returns (uint) {
        if (x > 1) {
            uint s = x + 1;
            uint m = s + 1;
            return m;
        }
        uint t = x + 1;
        uint n = t + 1;
        return n;
    }
}
