pragma solidity ^0.8.0;
contract semanticallyequivalent11
{
    uint public z__;
    uint public x;
    uint public y;
    uint public z;
    modifier z_greater_than_0() {
        require(y>z__);
        _;
    }
    function test() public {
       if(z__ == 14) return;
    }
    function test16() public {
       x = x+11;
    }
    function test19() public {
       z__ = z__;
    }
}

contract semanticallyequivalent7
{
    uint public z__;
    uint public x;
    uint public y;
    uint public z;
    modifier z_greater_than_0() {
        require(y>z__);
        _;
    }
    function test() public {
       x = x+11;
    }
    function test11() public {
       test(z__);
    }
}

contract semanticallyequivalent12
{
    uint public z__;
    uint public x;
    uint public y;
    uint public z;
    modifier z_greater_than_0() {
        require(y>z__);
        _;
    }
    function test() public {
       x = x+11;
    }
}

contract semanticallyequivalent13
{
    uint public z__;
    uint public x;
    uint public y;
    uint public z;
    modifier z_greater_than_0() {
        require(y>z__);
        _;
    }
    function test() public {
       x = x+11;
    }
}

contract semanticallyequivalent14
{
    uint public z__;
    uint public x;
    uint public y;
    uint public z;
    modifier z_greater_than_0() {
        require(y>z__);
        _;
    }
    modifier test11(uint z)
    {
        require(x==0);
        require(y==z);
        _;
    }
    function test() public {
       if(z__ == 14) return;
