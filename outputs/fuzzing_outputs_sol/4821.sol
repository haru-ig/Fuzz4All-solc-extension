pragma solidity ^0.8.0;
interface Some {}
contract Caller is Receiver {
    function method() public payable {
        receiver.method();
    }

    function fallback() public {
        Some(receiver).method();
    }
}
