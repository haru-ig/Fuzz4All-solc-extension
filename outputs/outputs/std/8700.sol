pragma solidity ^0.8.0;
contract Examples
{
    uint[] public arr;
    function getter() public view {
        arr[3] = 22;
        uint32[] memory arr_3 = new uint32[](3)
        arr_3[1] = 10;
        arr_3[2] = 20/2;
        uint[] memory unarr = new uint[](3);
        for (uint i = 0; i < 3; i++)
        {
            unarr[i] = uint(arr_3[i]);
        }
        arr = unarr;
        assert(arr[1] == 10);
    }
}
