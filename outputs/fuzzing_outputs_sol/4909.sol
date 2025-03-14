pragma solidity ^0.8.0;
contract Caller {
    constructor() {}
    receive(uint16 m) external returns (bool) {
        return true;
    }
    receive() external payable returns (uint32) {}
}
