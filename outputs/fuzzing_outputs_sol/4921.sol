pragma solidity ^0.8.0;
contract Fallback {
    constructor() {
        _;
    }
    fallback() external payable {
        uint _dummy = 2;
    }
}
