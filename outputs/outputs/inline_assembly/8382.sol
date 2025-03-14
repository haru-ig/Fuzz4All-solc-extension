pragma solidity ^0.8.0;
contract SolveAssembly3
{
    function test() public
    {
        uint y = 0x123;
        uint x;
        uint z;
        uint y_;

        if(y >= 0x10 && y <= 0x1f)
        {
            if(y < 0x13)
            {
                z = x + y;
            }
            x = z + x;
        }
        y_ = y & 0x10;
        _;



    }
}

```
