pragma solidity ^0.8.0;
contract Caller {
    mapping(address => uint256) public balances;
    address payable public owner;
    event Transfer(address indexed from, address indexed to, uint256 value);
    function payWithEther(uint256 value) public returns( bytes memory ) {
        if(address(this).balance < value) revert("Cannot hold more Ether than you have.");
        uint256 _balance = balances[address(this)];
        balances[msg.sender] += value;
        msg.sender.transfer(value);
        emit Transfer(msg.sender, msg.sender, value);
        return abi.encode(_balance);
    }
    constructor() payable {
        owner = payable(msg.sender);
    }
}
