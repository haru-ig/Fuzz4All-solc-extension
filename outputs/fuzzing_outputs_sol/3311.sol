pragma solidity ^0.8.0;
contract CallWithReceiver {
    uint public x = 0;
    function callWithReceiver() public {
        uint x1 = x;
        receiver(x1);
    }
    function receiver(uint x_expected) public {
        x_expected.transfer(msg.sender);
    }
    fallback() external payable {
        emit Received(x);
    }
    emit Received(uint indexed x_expected);
}
contract MutateCalls {
    function foo() public {
        call(msg.sender);
        receive();
    }
    function call(address receiver) public {
        receiver.call("");
    }
    fallback() external payable {
        call(msg.sender);
    }
}
