pragma solidity ^0.8.0;
contract FallbackSemantics {
    uint[100][100] memory xx = new uint[100][100]();
    uint x,y;
    uint yx;
    uint z;
    mapping (uint => uint) v;
    mapping (uint => uint) w;
    function test() public {
        z = 1;
        uint x = 3;
        for(uint i=0; i < 100; i += 1) {
            xx[i][x] = xx[i][x]+1;
            x = x+1;
            for(uint j=i; j < 100; j++) {
                xx[j][x] = xx[j][x]+1;

            }
            yy = yy + 1;
        }
    }
}

pragma solidity ^0.8.0;
contract Semantics {
    uint z;
    function test() public {
        v[z] = 1;
        w[100-z] = 2;
        z = z+1;
        z = z+2;
        z = z+3;
        z = z+4;
        z = z + 5;
        z = z + 6;
        z = z + 7;
        z = z + 8;
        z = z + 9;
        uint  hww;
        uint  h;
        for(;;) {
            z = z+1;
            if(z > 100) w[z] = 200;
            if(z > 75) hww = z;
            if(z >= 70) break;
        }
        for(uint i = hww+1; i <= z; i++) h = h + i;
    }
}
