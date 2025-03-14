pragma solidity ^0.8.0;
contract ContractWithPayableFallback {
    uint256 public etherBalance;
    uint256 private staticBalance;
    IReceiverWithFallback public staticReceiver;
    uint256 private nonPayableFallbackBalance;
    constructor(uint256 _nonPayableFallbackBalance) {
        nonPayableFallbackBalance = _nonPayableFallbackBalance;
    }
    payable
    receive() public payable {
        nonPayableFallbackBalance -= msg.value;
        staticReceiver.withdrawEther();
    }
    function withdrawEther() public payable {
        nonPayableFallbackBalance -= msg.value;
        staticBalance += msg.value;
    }
    function getStaticBalance() public view returns (uint256) {
        return staticBalance;
    }
    receive() public payable {
        staticBalance += msg.value;
        staticReceiver.withdrawEther();
    }
}
