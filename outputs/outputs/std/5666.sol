pragma solidity ^0.8.0;
contract M11 is M10{
    constructor () public { }
    function foo() public {
        uint8 a = 1;
        x[a] = a + 1;
        uint8 b = 0;
        y = x[b];
        uint64 c = 1;
        uint64 d = 1;
        f = f + g + 5 / 6 + (a + b) * (a * b / 4) + c * d * d;
        uint a2=1;
        uint[8] memory a3;
        a3.push(~x[1]);
        y--;
        uint[8] memory a5;
        a5.push(b + a + a2);
        uint[8] memory a6;
        a6.push(~x[2] & 1);

        uint[8] memory a7;
        a7[7] = x[0];
        a7.push(a7 + 1);
        uint[8] memory a8;
        a8.push(a1);
        uint[8] memory a9;
        a9.push(a9 + 2);
        uint[8] memory a10;
        for(uint i=0;i<a7.length;i++){
            a10[7 - i] = a7[i + 1];
            }
}
