pragma solidity ^0.8.0;
contract Caller {
    LowLevel lowLevel;

    receive() external payable {
        lowLevel.sendEtherToLowLevel(msg.sender);
    }
}
