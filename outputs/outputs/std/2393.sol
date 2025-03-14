pragma solidity ^0.8.0;
contract MutatedEquivalent2
{
    function multiplyTwo(uint256 a) public returns(uint256)
    {
        uint256 b;
        b = a;
        b * 4;
        uint256 c;
        c = a;
        c = a / (b * 2);
        return c;
    }
}
