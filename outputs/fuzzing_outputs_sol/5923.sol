pragma solidity ^0.8.0;
contract EtherReceiver {
    function withdrawEther (uint amount) public {}
    function sendEartherToContract (uint amount) public payable {
        EtherReceiver EtherReceiver = new EtherReceiver();
        EtherReceiver.sendEartherTo.value (amount) (receive);
    }
}
