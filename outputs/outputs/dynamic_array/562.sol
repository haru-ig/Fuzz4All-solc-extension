pragma solidity ^0.8.0;
contract test23 {
    uint256 m1;
    uint public v1;
    mapping (address => bool) public myMap;
    function test() public
    {
        uint m2 = 101;
        uint n2 = 100;
        uint a = 2**20;
        uint b = 3;
        m1 = 55;
        m1 = a / 100;
        m2 = m2 + 222;
        m1 = m2 - b;
        n2 = a * b;
        uint256 num = n2 + 1;
        m1 = num + m1;
    }
}
