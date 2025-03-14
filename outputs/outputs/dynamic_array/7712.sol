pragma solidity ^0.8.0;
contract Test18_semanticsSame_9{
        struct S1 {uint s;}
        struct S2 {uint s;}
        uint [3] x;
        uint a;
        uint b;
        function f() public {
            x[0] = a;
            x[1] = 2;
            x[2] = 3;
            a = b;
            b = 3;
            a = b;
            b = 2;
            b = 2;
            b = a & (b << 8);
            a = ~a & (~b >> (8*3));
            x[2] = x[2] >> x[0] + x[0] + 1 & ~x[0] - (x[1] << 1) + 2 >> 22;
        }
    }
