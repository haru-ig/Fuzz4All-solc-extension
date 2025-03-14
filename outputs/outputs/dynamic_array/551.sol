pragma solidity ^0.8.0;
contract test24
{
    mapping (address => bool) public myMap;
    uint public v1;
    uint256 m1;
    uint256 n2;
    uint256 a;
    uint256 b;
    function test() public
    {
        myMap[address(this)] = true;
        a = 56 * (2**20) + 3;
        b = 56 * (2**20) + 399;
        m1 = a + b;
        a = a + b;
        n2 = a * b;
        myMap[address(this)] = false;
        m1 = a + b;
        m1 = m1 - 1;

        n2 = n2 * 3;
    }
}
