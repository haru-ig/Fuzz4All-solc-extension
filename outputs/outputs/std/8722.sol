pragma solidity ^0.8.0;
contract Example
{
    mapping(address=>uint) public balances;
    function sub() public returns(uint){
        if(balances[msg.sender]<=0) return 0;
        balances[msg.sender] -= balances[msg.sender];
        return balances[msg.sender];
    }
}
