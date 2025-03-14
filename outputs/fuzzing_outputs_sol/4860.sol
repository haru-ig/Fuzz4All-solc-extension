pragma solidity ^0.8.0;
contract Mutator {
    address public __callback;
    constructor() {
        __callback = msg.sender;
    }
    function getCallback() public pure returns (address) {
        return __callback;
    }
    function payAndRevert() public payable {
        __callback.transfer(msg.value);
    }
}
contract Reverter {
    address public __callback;
    constructor() {
        __callback = msg.sender;
    }
    function getCallback() public pure returns (address) {
        return __callback;
    }
    function revert() public {
        __callback.call.value(msg.value)();
    }
}
contract Caller {
    address payable public __callback;
    constructor () {
        __callback = msg.sender;
    }
    function callWithFallback(address payable _contract) public payable {
        _contract.transfer { payable: true }(payable(__callback));
    }
}
