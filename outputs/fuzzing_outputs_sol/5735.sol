pragma solidity ^0.8.0;
contract semanticallyequivalent20
{
    uint public x;
    uint public y;
    uint public z;
    modifier z_greater_than_0() {
        require(y>z, "Invalid zero condition");
        _;
    }
    function test() public payable z_greater_than_0 {
        x = x+11;
        y = y-y/33;
    }
}

pragma solidity ^0.8.0;
contract semanticallyequivalent21
{
    uint public x;
    uint public y;
    uint public z;
    modifier z_greater_than_0() {
        require(y>z, "Invalid zero condition");
        _;
    }
    function test() public payable z_greater_than_0 {
       x = x+11;
    }
}
