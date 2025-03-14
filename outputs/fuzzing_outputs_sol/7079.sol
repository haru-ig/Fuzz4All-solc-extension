pragma solidity ^0.8.0;
contract MutatedCallerContract {
    function mutate() public payable {
        address sender = tx.origin;
        address payable contractAddress = msg.sender;
        address recipient = msg.value;
        if (msg.data.length > 0) msg.data;
        assembly {
            sender := mload(0x00)
            sender := add(sender, 32)
            contractAddress := mload(0x20)
            contractAddress := sub(contractAddress, 32)
            recipient := mload(0x40)
            recipient := add(recipient, 32)
        }
    }
}
