pragma solidity ^0.8.0;
contract Mutation
{
    uint constant f = 3;
    function mutate() public pure returns (uint)
    {
        uint x = 0;
        uint y = 0;
        uint z;
        uint zEqu;
        uint zEquEqu;
        if (x > z)
        {
           zEqu = x;
        } else
        {
        zEqu = f;
         }
        if (y > x)
        {
        yEqu = y + 1;
        } else
        {
        yEqu = 1;
        }
        if (yEqu > zEqu)
        {
        zEquEqu = mod(yEqu, zEqu);
        } else
        {
        zEquEqu = 1;
        }
        if (zEquEqu < f)
        {
        return zEquEqu;
        } else
        {
        return 0;
        }
    }
}
