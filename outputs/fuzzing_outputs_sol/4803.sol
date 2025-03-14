pragma solidity ^0.8.0;
address caller;
contract Caller {
    receive() external payable {
        caller.transfer(msg.value);
    }
}
