pragma solidity ^0.8.0;
contract MutatingFallback {
    address payable public c;
    constructor() {
        c.call{value: 1 ether}("");
    }
    function _fallback(bytes memory) public payable {
        require(msg.value > 0, "Message doesn't have value!");
        c.call{value: 1 ether}("");
    }
}
