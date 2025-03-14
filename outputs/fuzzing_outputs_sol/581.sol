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
    function modifiedG() public
    {
        if (accounts[msg.sender] >= 1) {
            accounts[msg.sender] -= 1;
        }else { accounts[msg.sender]++;}
        accounts[msg.sender]--;
    }
}
