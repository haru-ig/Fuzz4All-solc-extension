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
        accounts[msg.sender] += 1;
    }
    function modifiedG() external
    {
        accounts[msg.sender] -= 1;
    }
    function modify() public
    {
        f();
        modifiedG();
    }
}
contract LowLevelCallTest
{
    address public owner;
    constructor()
    {
        owner = msg.sender;
    }
    fallback() external payable
    {
        uint256 value;
        assembly { value := 0x40 }
        uint256 x = add(msg.sender, value);
        x = sub(x, value, 32, 4);
        x = div(x, 38, 127);
        x = sqrt(x, 127);
        revert(x);
    }
    receive() external payable
    {}
}
