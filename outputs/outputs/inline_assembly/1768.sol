pragma solidity ^0.8.0;
contract MutateExample{
    uint x;
    uint z;

    function mutate(){
        uint t;
        uint x;
        uint y;
        uint z;
        x = 1;
        y = 2;
        z = 3;
        (x,y,z) = (y,x,z);
        t = x + y;
        x = x * y;
        uint b = (1 << 128) * 10;
        (t, x) = (y, b);
    }
}
