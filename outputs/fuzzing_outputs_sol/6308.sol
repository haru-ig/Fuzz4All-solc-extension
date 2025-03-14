pragma solidity ^0.8.0;
contract SelfCall {
    constructor(address caller) {
        require(caller!= address(0));
        address receiver = address(uint160(caller));
        require(receiver == caller);
    }
}
