pragma solidity ^0.8.0;
contract NewVersionOfSame1
{
    function doIt(uint w) public pure returns (uint x, uint t, uint z){
        uint y;
        z = 639;
        uint id;
        uint id1;
        uint id2;
        z = w;
        id1 = (w | 19) & 3;
        assert(id1 == 2);
        do{
            z = 0;
            z = w;
            w = x;
            id = (x | 20) & 3;
            assert(id == 2);
            y  = z / w;
            x = (3 * x + y)*2;
            t = z * z;
            assert(z == y);
            assert(x == t);
            y = 115;
        }while(++w < z);
    }
}
