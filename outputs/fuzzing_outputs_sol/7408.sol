pragma solidity ^0.8.0;
contract Caller {
    uint8 public x;
    function receive() external payable {
        x = msg.value;
    }
}
