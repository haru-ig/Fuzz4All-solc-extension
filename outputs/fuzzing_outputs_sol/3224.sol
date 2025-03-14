pragma solidity ^0.8.0;
contract FallbackRecipient {
    receive() public payable {
        fallback(msg.value);
    }
}
