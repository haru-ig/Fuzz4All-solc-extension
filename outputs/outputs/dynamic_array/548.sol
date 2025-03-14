pragma solidity ^0.8.0;
contract test24
{
    mapping (address => bool) public myMap;
    uint256 m1;
    uint public v1;
    function test() public
    {
        uint256 m2 = 101;
        uint256 n2 = 100;
        uint256 a = 2**20;
        uint256 b = 3;
        myMap[address(this)] = true;
        m2 = a;
        m1 = 0;
        n2 = 100000 / 10000;
        m1 = m2 + m2;
        v1 = n2 - 60;
        if (n2) {
            delete myMap[address(this)];
        }
    }
}
