pragma solidity ^0.8.0;
contract ArraySize {
    uint[12] a;
    uint[12] b;
    uint[12] c;
    uint[12] d;
    function updateArray() public {
        b[1-1] = a[1];
        c[1-1][1] = a[1]+b[2-1];
        d[1-1][1][1] = b[1];
        d[1-1][1][1][1] = c[1];
        if(a[1] > 0) a[1] = a[1-1];
    }
}
