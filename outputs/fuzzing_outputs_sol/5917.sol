pragma solidity ^0.8.0;
contract EtherReceiver_Mutative {
    address public receiver;
    uint public totalTransfer;
    event EtherTransfer (address sender, address receiver, uint amount);
    function getReceiver() public view returns (address ret) {
        return receiver;
    }
    function mutativeTransferEther (uint amount) public {
        receiver.send(amount);
        totalTransfer += amount;
        emit EtherTransfer(msg.sender, receiver, amount);
    }
}
