pragma solidity ^0.8.0;
contract MutatedEquivalent2
{
    function multiplyAdd1(uint256 a) public returns(uint256)
    {
       uint256 a1;
       a1 = 4;
       a1 = 40;
       return a1;
    }
}
