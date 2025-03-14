pragma solidity ^0.8.0;
contract semanticallyequivalent10
{
    uint16 y = 1;
    fallback function() public payable{}
    function test()public {
        y = 2;
    }
}
