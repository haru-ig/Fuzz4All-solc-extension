pragma solidity ^0.8.0;
contract Test43_DynamicArray4
{
    uint[][][1][2] public C;
    uint[] public D;
    constructor() public {
        C[1][2].push(new uint[](2));
    }
    function push(uint n) public returns(uint[][][][1][2])
    {
        uint[][][1][2] memory _arr = new uint[][][1][2](3);
        for(uint y=1; y<=3; y++)
        {
            _arr[y].push(new uint[](2));
            C[y][2].push(C[y][2][-1]);
        }
        uint[][][1][2] memory arr = new uint[][][1][2](3);
        uint[][] memory arr2 = new uint[][](1);
        for(uint w=0; w<=3; w++)
        {
            arr2[0] = C[w][0]+1;
            for (uint h=0; h<C[w][0].length; h++)
            {
                arr[w][h] = arr2[0] + n + h;
            }
        }
        return arr;
    }
    function push2() public returns(uint[][][][1][2])
    {
        uint[][][1][2] memory arr = new uint[][][1][2](1);
        uint[][] memory arr2 = new uint[][](1);
        for (uint i=0; i<IOTA; i++)
        {
            arr2[0] = C[0] + i;
            for (uint j=0; j<C[0].length; j++)
            {
                arr[0].push(arr2 + i*j);
            }
        }
        return arr;
    }

}
