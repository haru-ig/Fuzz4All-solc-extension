pragma solidity ^0.8.0;
contract mutation1b
{
    function a(uint64[] memory x) internal pure
    {
        uint64[] memory y=new uint64[](x.length);
        for (uint i = 0; i < x.length; ++i)
            y[i-1]=x[i];

        assert(y[2]==3);
    }
}
