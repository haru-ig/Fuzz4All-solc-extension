pragma solidity ^0.8.0;
contract Caller2 {
    address payable _addr;
    constructor() { _addr = payable(msg.sender); }
    receive() external payable {}
    fallback (uint i) external payable {
        i = 0;
    }
}
