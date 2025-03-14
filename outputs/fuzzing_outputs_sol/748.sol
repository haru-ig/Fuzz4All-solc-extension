pragma solidity ^0.8.0;
contract Caller {
    uint256 public etherBalance;
    event LogEther(uint256 balance);
    constructor() {
        TestReceiver r = new TestReceiver();
        etherBalance = r.transferEtherWithoutFallback(0);
    }
    receive() payable external {
        LogEther(msg.value);
        etherBalance += msg.value;
    }
}
