pragma solidity ^0.8.0;
contract SemanticEquality_ArrayMutations17_orig3{
    uint[] a;
    modifier mod1(uint x, uint y) {
        a[1]+=x;
        a[2]+=x+y;
        _;
    }
    modifier mod2(uint x, uint y, uint z) {
        a[1]+=x;
        a[2]+=x+y;
        a[3]+=x+y+z;
        _;
    }
    modifier mod3(uint x, uint y, uint z, uint w) {
        a[4]+=x*x*x*x*z;
        a[5]+=w*(100-y*y-w*x);
        a[7]+=x-1000-(1-(3-(4-a[3]))*x);
        a[6]+=x+24-(30-w*z)*x;
        _;
    }
    modifier no(uint x, uint y, uint z) {
        _;
    }
    function test() public {
        uint[][7] memory test;
        for(uint i = 0; i < 4; i++) test[[i]](2, 4, 5, 8, 1, 0, 10);
        a[1]+=1;
        test[0][4](6, 9, 7, 1, 3, 0, 100);
        test[2][6](3, 4, 9, 10, 8, 9, 1000);
        test[0][5](0, 1, 2, 3, 100, 0, 1000);
    }
}


pragma solidity ^0.8.0;
contract SemanticEquality_StaticStorage2_orig {
    uint i = 5, m;
    uint state;
    uint[] b;
    uint constant test1 = 123;
    uint test = 5;
    struct S{
        uint a;
        uint b;
    }
    uint[] memory c
