pragma solidity ^0.8.0;
contract EtherReceiver {
    function withdrawEther (uint amount) public {}
    function sendEartherTo (address receiver, uint amount) public payable {}
    receive() external payable {
    }
}
