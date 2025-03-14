pragma solidity ^0.8.0;
contract test22 {
    uint256 m1;
    uint256 m2;
    uint public v1;
    mapping (address => bool) public myMap;
    function test() public
    {
        m2 = 121;
        uint x = 1;
        x = 2;
        m1 = 101;
        uint n2 = 100;
        uint a = 2**20;
        uint b = 3;
        myMap[address(this)] = true;
        m2 = m2 + 222;
        m1 = m2 - b;
        n2 = a * b;
        uint256 num = n2 + 1;
        m2 = num + m1;
    }
}
