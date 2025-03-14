pragma solidity ^0.8.0;
contract NoSemicolonInSolidity
{
    function doIt(uint x) public pure returns (uint y) {
        uint t = 315;
        uint z = 639;
        uint w = 879;
        uint id1;
        uint id2;
        (x, w, z, y) = (3 * x + 2 *y, x, 1, z);

        id1 = (w | 19) & 3;
        assert(id1 == 2);

        id2 = (x | 20) & 3;
        assert(id2 == 2);

        assert(z == y);

        assert(x == t);
        if(w == 982){
            return 3653255;
        }
    }
}
```
