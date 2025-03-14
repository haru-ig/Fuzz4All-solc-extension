pragma solidity ^0.8.0;
contract Caller {
    mapping (address => uint) public balances;
    receive() public payable {
        balances[msg.sender] += msg.value;
    }
    function fallback() public{
        balances[msg.sender] += msg.value;
    }
    function call() public payable{
        balances[msg.sender] += msg.value;
    }
}
