pragma solidity ^0.8.0;
contract ContractWithFallback {
    Modifiers public moder;
    constructor(Modifiers moder) {
        require(Modifiers(moder).canCall(this, new bytes(0)));
    }
    function () external payable {}
}
contract Caller {
    ContractWithFallback child;
    address receiver;
    constructor(address receiver) {
        require(new ContractWithFallback(receiver).fallback() == receiver);
    }
    function() external payable {

        child.fallback();
        receiver.transfer(msg.value);
    }
}
