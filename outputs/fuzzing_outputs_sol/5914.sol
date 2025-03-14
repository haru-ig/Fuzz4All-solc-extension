pragma solidity ^0.8.0;
contract EtherReceiver {
    function withdrawEther (uint amount) public pure {
        require(amount > 0, "Cannot send 0 Ether");
        (bool success, ) = receiver.call.value(amount)("");
        require(success, "Ether transfer failed");
    }
    function sendEartherTo (address receiver, uint amount) public pure {
        receiver.call.value(0)("");
    }
}
