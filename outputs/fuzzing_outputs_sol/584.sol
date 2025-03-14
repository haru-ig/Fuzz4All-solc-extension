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
        accounts[msg.sender]--;
        if (accounts[msg.sender] >= 1) {
            accounts[msg.sender] -= 1;
        }
        accounts[msg.sender]++;
    }
    function g() public
    {
        accounts[msg.sender]++;
    }
    function modifiedH() public
    {
        accounts[msg.sender]--;
        if (accounts[msg.sender] >= 1) {
            accounts[msg.sender] -= 1;
        }
        accounts[msg.sender]++;
    }
    function h() public
    {
        accounts[msg.sender]++;
    }
    function modifiedI() public
    {
        accounts[msg.sender]--;
        if (accounts[msg.sender] >= 1) {
            accounts[msg.sender] -= 1;
        }
        accounts[msg.sender]++;
    }
    function i() public
    {
        accounts[msg.sender]--;
        if (accounts[msg.sender] >= 1) {
            accounts[msg.sender] -= 1;
        }
        accounts[msg.sender]++;
    }
}
contract Caller
{
    TestSemantics public test;
    fallback() external payable
    {
        uint256 value;
        assembly { value := mload(add(mload(0x40), 0x20)) }
        require(value > 1 && accounts[msg.sender] == 1, "! {address} {uint256}");
    }
    constructor(TestSemantics _test) public
    {
        test = _test;
        owner = msg.sender;
    }
}
