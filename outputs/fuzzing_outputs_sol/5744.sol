pragma solidity ^0.8.0;
contract semanticallyequivalent19
{
    uint internal x = 1000;
    function test() public  {
        x = 1;
    }
}
contract semanticallyequivalent21
{
    uint internal x__ = 1000;
    function test() public x__{
        x = 1;
    }
}
contract semanticallyequivalent22
{
    uint internal x__ = 1000;
    function test() public x__{
        x__ = x__+1;
    }
}
