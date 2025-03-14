pragma solidity ^0.8.0;
contract C {
    uint public v = 0;
}


contract Test
{
    constructor()
    {
        C c;
        c.myFunction();
    }
}
