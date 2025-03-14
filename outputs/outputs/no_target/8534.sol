pragma solidity ^0.8.0;
contract Equivalent3 {
    event Evt(address, uint, uint);
    event Evt2(uint a);
    function set2(uint a) public payable {
        emit Evt(msg.sender, a, 1155);
        emit Evt2(a);
    }
    }
