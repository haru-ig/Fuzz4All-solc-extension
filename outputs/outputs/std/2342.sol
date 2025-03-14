pragma solidity ^0.8.0;
contract Equivalent
{
    constructor() public {}
    function f() public {
        uint m = 99;
        uint a = 2;
        string s = "hello";
        uint r = a * m / 3 + s;
    }
}
