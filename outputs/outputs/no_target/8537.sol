pragma solidity ^0.8.0;
contract Equivalent2 {
    event Evt(address, uint, uint);
    event Evt2(uint a);
    function set1(uint a) public payable {
        emit Evt(msg.sender, a, 1155);
        emit Evt2(a);
        emit Evt(msg.sender, a+1, 22);
        }
    function set2(uint a) public payable {
        emit Evt(msg.sender, a+1, 22);
        emit Evt(msg.sender, a+2, 33);
        emit Evt(msg.sender, a+3, 44);
        emit Evt(msg.sender, a+4, 55);
    }
    }
