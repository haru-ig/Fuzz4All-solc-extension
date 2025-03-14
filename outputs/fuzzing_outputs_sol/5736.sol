pragma solidity ^0.8.0;
contract semanticallyequivalent16
{
    uint public z__ = 14;
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
pragma solidity ^0.8.0;
contract semanticallyequivalent17
{
    uint public z__;
    uint public x;
    uint public y;
    uint public z;
    modifier z_greater_than_0() {
        require(y>z__);
        _;
    }
    function test19() public {
       z__ = z__;
    }
}
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
    function test16() public {
       if(z__ == 14) return;
    }
    function test17() public {
       x = x+11;
    }
}
