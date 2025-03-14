pragma solidity ^0.8.0;
contract MutatedFallback {
    fallback () external returns (address) {_ = msg.sender;}
}
