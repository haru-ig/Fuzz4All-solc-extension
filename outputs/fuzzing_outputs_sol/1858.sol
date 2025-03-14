pragma solidity ^0.8.0;
contract NotMutatedFallbackRecipient {
    uint constant _value = 2;
    uint public balance;
    uint public constant _gasPrice = 500;
    constructor() {
        balance = 0;
    }
    function fallback() external payable {
        require(balance > 0 && msg.value == _value);
        balance = balance - 1;
    }
}

contract EtherReceiver {
    constructor() {
    }
    fallback() external payable {
    }
}

contract InvalidFallback {

    function callFallback() {
        MutatedFallbackRecipient fallbackRecipient;


        address fallbackRecipientAddress = address(fallbackRecipient);


        EtherReceiver.value(msg.value)(fallbackRecipientAddress);
    }
}
