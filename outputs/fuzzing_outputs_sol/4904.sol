pragma solidity ^0.8.0;

contract MutedFallback {
    constructor() {}
    receive() external payable {

    }
    fallback() external payable {}
}
