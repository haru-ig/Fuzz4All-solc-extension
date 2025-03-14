pragma solidity ^0.8.0;
contract S6
{
    uint[] public bar;
    uint[] private baz;
    uint[][] public bak;
    function S6() public
    {
        bar[0]  = 5;
        bar[1]  = 4;
        bar[2]  = 3;
        baz[0]  = 3;
        baz[1]  = 2;
        baz[2]  = 1;
        bak[0] = 3;
        bak[1] = 6;
        bak[2] = 8;
    }
    function S6Function() public
    {
        bar[0] += 10;
        bar[1] += 10;
        bar[2] += 10;
        baz[0] += 10;
        baz[1] += 10;
        baz[2] += 10;
        bak[0] += 10;
        bak[1] += 10;
        bak[2] += 10;
    }

}
