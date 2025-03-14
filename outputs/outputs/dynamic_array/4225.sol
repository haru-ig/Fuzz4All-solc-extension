pragma solidity ^0.8.0;
contract G {
    uint256[3] x = [ 1, 2, 3 ];
    uint8[3] d = [
        0, 1, 2, 3, 4, 5, 6, 7, 8, 9,
        0, 1, 2, 3, 4, 5, 6, 7, 8, 9,
        0, 1, 2, 3, 4, 5, 6, 7, 8, 9,
    ];

    function f() public {
        d[3] = 10;
        x[3] = d[3];
        x[0] = 1;
    }

    function b() public {
        uint256 m = d[3];
        d[3] = 0;
        uint256 o = 0;
        uint256 n = 1;
        o = 1<<32;
        while(n<o){
            m++;
            d[n] = m;
            n+=1;
        }
    }
}
