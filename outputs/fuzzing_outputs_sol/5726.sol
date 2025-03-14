pragma solidity ^0.8.0;
contract semanticallyequivalent18
{
    uint public x;
    uint public y;
    uint public z;
    modifier z_greater_than_0() {
        require(y>z, "Invalid zero condition");
        _;
    }
    function test() public payable z_greater_than_0 {
       x = 0xabcdef;
    }
}
contract semanticallyequivalent18 {
    modifier z_greater_than_0() {
        require(x>y, "Invalid zero condition");
        _;
    }
    function test() public {
      x = 0xabcdef;
    }
}

pragma solidity ^0.8.0;
contract semanticallyequivalent18 {
    modifier z_greater_than_0() {
        require(x>y, "Invalid zero condition");
        require(y>z, "Invalid zero condition");
        throw;
    }
    function test() public {
       uint x=0;
    }
}
contract Caller {
    modifier z_greater_than_0() {
        require(x>y, "Invalid zero condition");
        require(y>z, "Invalid zero condition");
        throw;
    }
    function test() public {
        uint x=0;
        uint y=2;
        uint z=4;
        z_greater_than_0;
        require (x == 0);
        require (y == 2);
        require (z == 4);
    }
}
