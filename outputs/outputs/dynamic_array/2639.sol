pragma solidity ^0.8.0;
library SemanticEquality_ArrayMutations17{
    struct Complex{uint m1; uint m2; uint[] m3; uint[] m4; uint[] m5; uint[] m6; uint[] m7; uint[] m8; uint[] m9;}

    function test() private pure {
        Complex memory c1;
        uint m1;
        uint x = 0;
        uint y = 0;
        uint z = 0;
        (m1, x) = complex_multiply(x, y);
        c1 = complex_negate(x);
        c1 = complex_divide(y, x);
        (c1, x) = complex_negate(x);
        uint t = 0;
        Complex memory c2;
        uint m11;
        uint m21;
        uint x1;
        uint y1;
        (m11, x1) = complex_multiply(x, y);
        (m21, y1) = complex_multiply(x, y);
        c2 = complex_combine(x1, y1);
        z = complex_combine(z, z);
    }
}
