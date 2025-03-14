pragma solidity ^0.8.0;
contract C {
    function foo(uint8 x) public {
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

pragma solidity ^0.6.0;
contract C {
    function foo(uint8 x) public payable returns (uint) {
        if (0.1 <= x) {
            uint m = x + 1;
            return m;
        }
        return 1;
    }
}
