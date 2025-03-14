pragma solidity ^0.8.0;
contract MutatedEquivalent4
{
    function multiplyAdd3(uint256[] memory a) public returns(uint256)
    {
        uint256 b;
        for (uint i = 0; i < a.length; i++)
        {
            b = multiplyAdd2(a[0]);
        }
        return b;
    }
}
