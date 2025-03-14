pragma solidity ^0.8.0;
contract mutatedreturn82
{
    constructor() public returns (uint,uint)
    {
        return (1, 2);
    }
    function mutatedreturn62(uint x) public returns (uint x,uint y)
    {
        return (x,x+1);
    }
    function mutatedreturn72(uint a) public returns (uint b)
    {
        x = a+1;
        b = a+a+a;
        return a;
    }
    function mutatedreturn82(uint a) public returns (uint b)
    {
        x = a;
        y = a+1;
        b = x+y;
        return x+y;
    }
    function mutatedreturn92(uint a, uint b) public returns (uint c)
    {
        x = a+a+1;
        y<fim_middle>}

contract mutatedreturn18
{
    constructor() public returns (uint,)
    {
        return;
    }
    function mutatedreturn28(uint x, uint y) public returns (uint x,uint y)
    {
        return (x,x+1);
    }
    function mutatedreturn38(uint a, uint b) public returns (uint x,uint y)
    {
        x = a+a+a+1;
        y = a+1;
        return (x,y);
    }
    function mutatedreturn48(uint a, uint b) public returns (uint c)
    {
        x = a+a+1;
        y = a+1;
        a = a;
        x += y;
        b = x;
        c = a+a+x;
        return x+y+c;
    }
}
contract mutatedreturns55
{
    constructor() public
    {
        return;
    }
    function mutatedreturn65(uint x) public returns (uint x,uint y) mutable returns (uint x,uint)
    {
        return (x,x+1);
    }
    function mutatedreturn75(uint a) public returns (uint b,uint a) mutates
    {
        x = a+a+a+1;
        y = x + 1;
        b = x;
        a = a;
    }
    function mutatedreturn85(uint a, uint b) public returns (uint c,uint b,uint x) mutates
    {
        x = a+a+a+b+1;
        y = a;
        b = y+1;
        a = a;
        c = x+y;
        x = b;
