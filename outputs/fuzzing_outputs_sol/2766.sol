pragma solidity ^0.8.0;
interface Interface {
    function call(bytes memory data) external payable;
}
contract Caller2 {
    address payable _addr;
    constructor() { _addr = payable(msg.sender); }
    receive() external payable {}
    fallback () external nonpayable {   }
}
