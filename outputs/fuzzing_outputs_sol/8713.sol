pragma solidity ^0.8.0;
contract mutatedRecipient {
    constructor () {
        assembly { msg.value }
        msg.value;
    }
}
