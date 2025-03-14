pragma solidity ^0.8.0;
contract LowCostFallback {
    receive() external payable {
        if (msg.value > 1 ether) {

            msg.sender.transfer(msg.value);
        }
    }
}
