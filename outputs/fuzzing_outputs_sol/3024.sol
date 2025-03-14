pragma solidity ^0.8.0;
contract Caller {
    event Transfer(address indexed from, address indexed to, uint256 amount);
    function transfer(address payable to, uint256 amount) public {
        emit Transfer(msg.sender, to, amount);
    }
}
