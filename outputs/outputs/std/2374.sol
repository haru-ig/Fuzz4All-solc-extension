pragma solidity ^0.8.0;
contract MutatedEquivalent
{
    uint constant  MAX_INT = 2**256 - 1;
    int        constant EMPTY_INT    = 2**2**32;
    int        constant MAX_ARRAY = 2**256;

    function add3() public returns(int)
    {
        uint256 a;
        a = 4;
        a = a + 4;
        return a;
    }
    function add4() public returns (int)
    {
        uint256 a;
        a = EMPTY_INT + 4;
        a = a + 4;
        return a;
    }
    function add5() public returns(int)
    {
        uint256 a;
        a = MAX_INT + 4;
        a = a + 4;
        return a;
    }
    function add6() public returns(int)
    {
        uint256 a;
        a = 4 + MAX_INT;
        a = a + 4;
        return a;
    }
    function add7() public returns(int)
    {
        uint256 a;
        uint256 a1;
        uint256 a2;
        a = EMPTY_INT + 4;
        a1 = a + 4;
        a2 = a1 + 4;
        uint256 a3;
        a = a + a;
        a1 = a + a;
        a2 = a + a;
        uint256 a4;
        a3 = (4 + a) + a;
        a4 = (a + a) + a;
        return a;
    }
}
