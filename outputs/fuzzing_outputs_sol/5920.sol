pragma solidity ^0.8.0;
contract Fallback {
    function f () public payable default receive() {
    }
}
