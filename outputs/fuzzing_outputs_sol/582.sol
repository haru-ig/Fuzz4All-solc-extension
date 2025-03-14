pragma solidity ^0.8.0;
contract TestSemantics
{
    address public owner;
    mapping(address => uint256) public accounts;
    constructor()
    {
        owner = msg.sender;
        accounts[msg.sender] = 1;
    }
    function f() public
    {
        accounts[msg.sender]++;
    }
    function modifiedG() external
    {
        accounts[msg.sender] -= 1;
    }
}
contract FallbackTest
{
    constructor()
    {}
    fallback() external payable
    {
        uint256 value;
        assembly { value := mload(add(mload(0x40), 0x20)) }
        assert(value > 0);
    }
}
