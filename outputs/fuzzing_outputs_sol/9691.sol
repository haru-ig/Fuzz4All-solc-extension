pragma solidity ^0.8.0;
contract PreMutatedCaller {
    address payable _new;
    receive() external payable {
        _new.transfer(msg.value * 2);
    }
}
