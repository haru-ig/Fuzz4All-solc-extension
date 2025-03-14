pragma solidity ^0.8.0;
contract Array13_modified_solidiarity{
    mapping(address => uint) private balances;
    constructor (){
        balances[msg.sender] += balances[msg.sender];
        balances[msg.sender];
    }
}
