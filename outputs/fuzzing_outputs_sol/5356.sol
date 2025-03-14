pragma solidity ^0.8.0;
contract mapmap
{
        mapping(address => uint) balances;
        function f() public
        {
                uint x = balances[msg.sender];
        }
        function g() public
        {
                uint x = balances[msg.sender];
                uint x2 = balances[msg.sender] + 1;
        }
}
