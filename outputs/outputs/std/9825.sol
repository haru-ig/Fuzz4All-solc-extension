pragma solidity ^0.8.0;
contract S1
{
    uint[] public bar;
    uint[] private baz;
    uint[] public bak;

    function S1()
    {
        bar[0] = 4;
        bar[1] = 3;
        bak[0] = 4;
        bak[1] = 3;
        baz[0] = 2;
        baz[1] = 1;
        bak[0] = 5;
        bak[1] = 6;
    }
}
