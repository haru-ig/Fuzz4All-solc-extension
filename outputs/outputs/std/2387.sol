pragma solidity ^0.8.0;
contract MutatedEquivalent4
{
    function multiplyAdd2(uint256 a) public returns(uint256)
    {
        uint256 b = a;
        b  /= 4;
        return b;
    }
}
