pragma solidity ^0.8.0;
contract Caller {
    function callWithFallback(uint) public pure {}
    function plainCall(uint) public pure {
        msg.value.transfer(msg.sender);
    }
}
