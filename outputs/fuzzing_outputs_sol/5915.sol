pragma solidity ^0.8.0;
import "./EtherReceiver.sol";
contract EtherMover {
    EtherReceiver public receiver;

    constructor (address _receiver) {
        receiver = EtherReceiver(_receiver);
    }

    function withdrawEther(uint amount) public returns(bool) {
        return receiver.withdrawEther(amount);
    }

    function sendEartherTo(address receiver, uint amount) public returns (bool) {
        return receiver.sendEartherTo(receiver, amount);
    }
}
