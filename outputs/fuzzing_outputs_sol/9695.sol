pragma solidity ^0.8.0;
contract FallbackSender {
    address payable _new;
    fallback() external payable {
        _new.transfer(msg.value);
    }
    receive() external {
        exit(0);
    }
}
