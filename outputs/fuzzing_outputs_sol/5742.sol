pragma solidity ^0.8.0;
contract semanticallyequivalent18
{
    uint public z__;
    uint public x;
    uint public y;
    uint public z;
    modifier z_greater_than_0() {
        require(y>z__);
        _;
    }
    constructor() public
    {
        z__ = 14;
    }
    function test19() public
    {
        z__ = z__;
    }
    function test16() public
    {
        x = x+11;
    }
    function test17() public
    {
        z = z__ + 1;
    }
}
contract semanticallyequivalent23
{
    uint public z__;
    uint public x;
    uint public y;
    uint public z;
    modifier z_greater_than_0() {
        require(y>z__);
        _;
    }
    constructor() public {}
    function test17() public
    {
        x = x+11;
        z = z__;
    }
    function test16() public
    {
        if(z == 14) return;
    }
}
contract A2
{
    function test23() public {
        uint z_;
        uint x = 1;
        uint y = 2;
        function test24(uint z_) external {

        }

        test24(z_);

        x = x+y;
    }
}
contract A
{
    event AEvent(uint z__);
    uint public z__;
    uint public x;
    uint public y;
    uint public z;

    modifier z_greater_than_0() {
        require(y>z__);
        _;
    }

    function test18() public {
        x = x+11;
    }

    function test17() public {
        z__ = z__;
    }

    function test16() public {
        x = x+11;
        z__ = z__;
        z = z__;
        if (z >= z__) return;
    }

    function test23() public returns(uint z_) {
        z__ = 14;
        return;
    }

    function test
