pragma solidity ^0.8.0;
contract map
{
    mapping(uint => uint) balances;
    mapping(address => uint) balances_contract;
    function f(uint key) public
    {
        balances[key] = balances[key]+1;
    }
    function g() public
    {
        balances[0] = balances[0] + 1;
    }
    function h() public
    {
        balances_contract[address(0)] = balances_contract[address(0)] + 2;
    }
    function i() public
    {
        balances[0] = 2;
    }
    function j() public
    {
        balances_contract[address(0)] = 2;
    }
}
