pragma solidity ^0.8.0;
contract TestFallback7
{
    address public owner;
    uint256 public min;
    constructor()
    {
        owner = msg.sender;
        min = 1;
    }
    fallback() external payable
    {
        accounts[msg.sender]++;
    }
    function modifiedG() public
    {
        accounts[msg.sender]--;
        if (accounts[msg.sender] >= min) {
            accounts[msg.sender] -= min;
        }
        accounts[msg.sender]++;
    }
}

pragma solidity ^0.8.0;
contract TestFallback8
{
    address public owner;
    mapping(address => uint256) public accounts;
    uint256 public min;
    constructor()
    {
        owner = msg.sender;
        min = 1;
   }
    function f() public
    {
        accounts[msg.sender]++;
    }
    function modifiedG() public
    {
        accounts[msg.sender]--;
        if (accounts[msg.sender] >= min) {
            accounts[msg.sender] -= min;
        }
        accounts[msg.sender]++;
    }
}
