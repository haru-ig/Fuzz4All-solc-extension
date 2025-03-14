pragma solidity ^0.8.0;
contract Solidity6To1_2 {
    uint public a;
    uint public [10, 15, 19] internal c;
    uint public [20, 25] public d;
    uint public [30, 35, 39] public e;
    uint public [40] public f;
    uint public [50,60,70,80,90,100,200,300] public g;
    uint public [1] public h;
    uint public i = 3;
    constructor() public {
        a = i;
        for (uint i=0; i<10; i++)
            d[i] = i;
        for (uint i=0; i<15; i++)
            e[i] = 1;
        for (uint i=0; i<19; i++)
            f[i] = 2;
        g[i] = 3;
        i++;
        h = 222;
    }
    function myFunction() public {
        a = a + a;
        a = 0;
        d[4] = 11;
        f[5] = 22;
        g[1] = 33;
        a = a + a;
        a = (maxA - prevB);
        for (uint i=3; i<15; i++)
            d[5] = 0;
    }
}
