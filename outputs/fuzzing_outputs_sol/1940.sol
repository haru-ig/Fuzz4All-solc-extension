pragma solidity ^0.8.0;
contract EtherCall {
    address payable contractWithFallback;
    constructor() {
        contractWithFallback = msg.sender;
    }
    fallback() external payable {
        uint _callValue = contractWithFallback.call.value(msg.value)("");
    }
}
