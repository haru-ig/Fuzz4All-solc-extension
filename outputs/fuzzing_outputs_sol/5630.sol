pragma solidity ^0.8.0;
contract semanticallyequivalent
{
    function f(uint x, uint y, uint z) public pure
    {


        if (x!= 1)
        {
            uint256 z1 = z;
        }
        else
        {
            x = 2;
        }
    }
}
