pragma solidity ^0.8.0;
contract Caller {
    fallback () external payable {
        uint amount = msg.value;
        address receiver = msg.sender;
        (bool, ) = receiver.call.value(amount)("");
    }
}
