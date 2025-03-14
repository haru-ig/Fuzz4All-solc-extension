pragma solidity ^0.8.0;
contract Equivalent1 {
    function set(uint a, uint) public payable {
        emit Evt(msg.sender, a, 1155);
    }
    }
