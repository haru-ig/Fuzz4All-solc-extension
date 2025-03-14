pragma solidity ^0.8.0;
contract semanticallyequivalent20
{
    uint public x;
    uint public y;
    uint public z;
    constructor (uint _x, uint _y)
        {z = _y; x = _x;
    }
    modifier z_greater_than_0() {
        require(y>z, "Invalid zero condition");
        _;
    }
    function test(uint _y) public {
       x = x+11;
       z = _y;
    }
    function test2() public payable z_greater_than_0 {
       x = x+11;
    }
}

pragma solidity ^0.8.0;
contract semanticallyequivalent21
{
    uint public x;
    uint public y;
    uint public z;
    uint public s;
    constructor ()
        {x = 0; y = 0; z = 0; s = 0}
    function test(uint _x, uint _y) public payable
        {
        x = _x; y = _y;
        }
    function test2() public payable z_greater_than_0
        {
        x = x+11;
    }
}
