pragma solidity ^0.8.0;
contract Mutate
{
    uint constant a = 0;
    uint constant b = 2**16 + 1;
    uint constant c = 17;
    function f() public
    {
        uint x = a;
        (x, a) = (1, 20);
        (x, a) = (20, 1);
        (x, a) = (21, 17);
    }
}
