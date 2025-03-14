pragma solidity ^0.8.0;
contract Caller {
    function callLowLevel() public{
        LowLevel lc = LowLevel(msg.sender);
        lc.sendEtherToLowLevel(0x1234567890abcdef1234567890abcdef1234567890abcdef1234567890abcdef1234567890abcdef1234567890abcdef1234567890abcdef1234567890abcdef1234567890abcdef1234567890abcdef1234567890abcdef1234567890abcdef1234567890abcdef12);
    }
}
