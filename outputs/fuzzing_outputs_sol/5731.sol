pragma solidity ^0.8.0;
contract semanticallyequivalent20
{
    uint public x;
    uint public y;
    uint public z;
    modifier z_greater_than_0() {
        require(z > 0, "Invalid zero condition");
        _;
    }
    function test() public payable z_greater_than_0
    {
        x = x+1;
        y = x+1;
        z = 1;
    }
}

pragma solidity ^0.8.0;
contract semanticallyequivalent21
{
    uint public x;
    uint public y;
    uint public z;
    modifier z_greater_than_0() {
        require(z > 0, "Invalid zero condition");
        _;
    }
    function test() public {
       x = x+1;
       payable(msg.sender).transfer(5);
    }
