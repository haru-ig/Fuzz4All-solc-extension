pragma solidity ^0.8.0;
contract Caller {
    function callLowLevel(uint8 index) public payable {
        new LowLevel().sendEtherToLowLevel(msg.sender);
    }
}
