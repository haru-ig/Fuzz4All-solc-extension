pragma solidity ^0.8.0;
contract Equivalent4 {
    event Evt(address, uint, uint);
    event Evt3(uint a);
    function set3(uint a, uint) public payable {
        emit Evt(msg.sender, a, 1155);
        emit Evt3(a);
    }
    }
