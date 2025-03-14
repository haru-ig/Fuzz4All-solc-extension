pragma solidity ^0.8.0;
contract MutatedEquivalent3
{
    function multiplyAdd2(uint256 a) public returns(uint256)
    {
        uint256 b;
        b = 2 * a;
        b = 5 * b;

        return b;
    }
}
