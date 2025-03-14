pragma solidity ^0.8.0;
contract Counter {
    mapping(address => uint) public balances;

    uint public newCurrent;
    function setNewCurrent(uint newCurrent) public{
        newCurrent = newCurrent;
    }
    function withdraw() public{
        balances[msg.sender] -= current;
    }
}
