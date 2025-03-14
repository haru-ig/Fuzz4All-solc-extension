pragma solidity ^0.8.0;
contract MutationEquivalence2
{

    uint x;
    function equivalent() public
    {
        x = x -10;
    }
}







pragma solidity ^0.8.0;
contract Test
{
    uint x;
    uint8 y;
    uint16 z;
    uint32 w;
    uint64 v;
    function equivalent1() public
    {
       equivalent2();
    }
    function equivalent2() public
    {
        x = x - 10;
        y = y - 30;
       equivalent2();
        v = v + 10;
        v = v + 0;
    }
}
