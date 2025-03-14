pragma solidity ^0.8.0;
contract MutationTest
{
    address public owner;
    function f() public
    {
        uint256 value;
        assembly { value := mload(add(mload(0x40), 0x20)) }
        value--;
        assert(value == 1);
    }
    constructor()
    {
        owner = msg.sender;
    }
}
