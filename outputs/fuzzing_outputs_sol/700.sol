pragma solidity ^0.8.0;
contract ContractWithFallback {
    Receiver receiver;


    fallback() external {
        receiver.setValue(msg.value);
    }


    receive() external payable {
    }
}
