pragma solidity ^0.8.0;
contract Equivalent3 {
    event Evt3(address, bytes memory, uint);
    function set5(uint a) public payable {
        emit Evt3(msg.sender, bytes32(a), 100);
        }
    }
