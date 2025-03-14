pragma solidity ^0.8.0;
contract semanticallyEquiv
{
    uint[] myuint;
    uint myuint_;
    constructor(uint c1_, uint num)
    {
        myuint_ = c1_;
    }
    function set()
    {
        myuint_[0] = 1;
        emit log0(9999);
    }
    function get() view
    {
        return myuint;
    }
    function()
    {
        revert();
    }
    event logN(uint a);
    event log1(uint a);
    event logN1(address a);
    event logN2(uint a, uint b);
    function log0(uint a)
    {
        emit log1(a);
        emit logN(myuint_[0]);
    }
    function log1(uint a)
    {
        emit logN(a);
    }
    function logN(uint a)
    {
        emit logN1(<address>(0));
        emit logN2(a,,a);
    }
    function log01(uint a, uint b)
    {
        emit logN1(<address>(0));
        emit logN2(a, 0x123456, b);
    }
    function log4(uint a, uint b)
    {
        emit log1(a);
        emit logN1(a);
        emit log01(myuint_, b);
    }
}
