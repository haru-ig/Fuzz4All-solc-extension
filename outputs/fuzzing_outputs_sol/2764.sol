pragma solidity ^0.8.0;
contract Caller {
    address _addr;
    constructor() { _addr = msg.sender; }
    receive() external payable {

        _addr.transfer(address(this).balance);
    }
}
