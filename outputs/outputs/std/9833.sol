pragma solidity ^0.8.0;
contract S5
{
    uint[] public bar;
    uint[] private baz;
    uint[] public bak;
    constructor
    (
        uint i,
        uint[] memory b
    )
    {
        bar[0] = i;
        bar[1] = 2;
        bar[2] = 3;
        bak = b;
    }
    function f() public
    {
       for (uint b = 0; b < bak.length; b++) {
           baz[b] = bar[bak[b]];
           bak[b] = 0;
       }
    }
}
