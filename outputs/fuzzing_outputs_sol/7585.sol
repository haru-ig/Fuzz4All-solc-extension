pragma solidity ^0.8.0;
contract Mutate
{
    mapping(address => bool) public dummy;
    function call(address c) public {
        require(c!= 0x0, "!=0");
        c.call{value: 10}("");
    }
}
