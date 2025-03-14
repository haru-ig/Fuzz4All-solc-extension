pragma solidity ^0.8.0;
library MutateSemantic5Caller3 {
    function mod(uint x, uint y) pure public returns (uint) {
        return x%(uint(-1)*y + uint(1));
    }
}

contract MutateSemantic5Caller {
    function mutate1(uint x) pure public returns (uint) {
        uint y = 1;
        uint z = 3;
        uint w;
        uint32 i;
        uint211 j;
        uint127 k;
        uint256 l;
        uint160 m;
        uint255 n;
        uint512 o;
        uint64 p;
        uint728 q;
        uint112 r;
        uint127 s;
        uint134 t;
        uint176 u;
        uint188 v;
        uint1814 w1;
        uint1868 x;
        uint1901 y1;
        uint1936 z1;
        z = x+y+z;
        w = x+y+z+w;
        i = x+y+z+w+i;
        j = x+y+z+w+i+j;
        k = x+y+z+w+i+j+k;
        l = x+y+z+w+i+j+k+l;
        m = x+y+z+w+i+j+k+l+m;
        n = x+y+z+w+i+j+k+l+m+n;
        o = x+y+z+w+i+j+k+l+m+n+o;
        p = x+y+z+w+i+j+k+l+m+n+o+p;
        q = x+y+z+w+i+j+k+l+m+n+o+p+q;
        r = x+y+z+w+i+j+k+l+m+n+o+p+q+r;
        if(y == 0) {
            return x;
        } else {
            return 0;
        }
    }
    function mutate2(uint256 x) pure public returns (uint256) {
        uint y = 0;
        uint z;
        uint w;
        uint32 i;
        uint211 j;
        uint127 k;
        uint256 l;
        uint512 o;
        uint64 p;
        uint728 q;
        uint112 r;
        uint127
