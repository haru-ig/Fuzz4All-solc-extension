pragma solidity ^0.8.0;
contract MyAddress {
    address myAddress;
    constructor() {
        myAddress = msg.sender;
    }

    function() external {
        msg.sender.transfer(msg.value);
    }
}
