pragma solidity ^0.8.0;
contract Array
{
    uint public data[10];
    function indexOf(uint[] memory a) public returns (uint)
    {
        if (a.length!= 0)
        {
            return 0;
        }
        else
        {
            return 1;
        }
    }
}
