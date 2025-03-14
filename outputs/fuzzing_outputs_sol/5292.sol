pragma solidity ^0.8.0;


contract Caller
{
    fallback4 internal myContract0;


    constructor()
    {
        myContract0 = new myContract0();
    }


    function call0() public
    {
        myContract0.c("");
    }


    function call1(uint64 x) public
    {
        myContract0.d(x);
    }


    function call2(uint64 x) public
    {
        myContract0.a(x);
    }


    function call3(uint64 x) public
    {
        myContract0.b(x);
    }
}
