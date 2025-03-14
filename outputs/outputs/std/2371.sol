pragma solidity ^0.8.0;
contract MutatedEquivalent
{
    function multiplyAdd4() public returns(int)
    {
       uint10 a1;
       a1 = 4;
       a1 = 40;
       return (int)a1;
    }
}
