pragma solidity ^0.8.0;
contract Test
{
    uint constant int_max = 2**256 - 1;

    function f() public pure returns(uint)
    {
        uint i = int_max;
        uint j = -1;
        for (j = 0; j < 32; j++) {
            uint r = i--;
            if (r < j) {
                break;
            }
        }
        uint k = 1;
        while (k < 32)
        {
            k += k < 32? 1 : 32;
        }
    }
}
