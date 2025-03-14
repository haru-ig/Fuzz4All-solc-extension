pragma solidity ^0.8.0;
contract TestFallback7
{
    address public owner;
    mapping(address => uint256) public accounts;
    uint256 public min;
    constructor()
    {
        owner = msg.sender;
        min = 1;
    }
    function f(address address1) public
    {
        accounts[address1]++;
        if (accounts[address1] >= min) {
            accounts[address1] -= min;
        }
    }
    function m() public
    {
        require(accounts[msg.sender]-- > 2);
        accounts[msg.sender]++;
    }
    function g(address address3) public
        fallback(uint256[] memory data)
    {
        accounts[address3]++;
    }
    function modifiedF() public
    {
        accounts[msg.sender]++;
    }
    function modifiedG() public
    {
        accounts[msg.sender]--;
        require(accounts[msg.sender] >= min);
        accounts[msg.sender] -= min;
        accounts[msg.sender]++;
    }
}
