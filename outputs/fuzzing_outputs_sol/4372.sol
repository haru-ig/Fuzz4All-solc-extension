pragma solidity ^0.8.0;
contract Caller {
    address addr;
    constructor(address _addr) public {
        addr = _addr;
    }
    fallback() external {
        msg.sender.send(msg.value);
    }
}
