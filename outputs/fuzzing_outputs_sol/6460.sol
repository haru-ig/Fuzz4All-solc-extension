pragma solidity ^0.8.0;
contract C {
    function bar() external returns (uint) {
        uint x = 2 + 1;
        if (x > 1) {
            uint s = x + 1;
            uint m = s + 1;
            return m;
        }
        uint t = x + 1;
        uint n = t + 1;
        uint o = n + 1;
        return o;
    }
}
