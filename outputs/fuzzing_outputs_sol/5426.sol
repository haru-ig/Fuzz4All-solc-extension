pragma solidity ^0.8.0;
contract failed
{

    function sendEther(){
        require(msg.value == 10 ether,"value must be 10 Ether");
        msg.sender.transfer(1 ether);
    }

    fallback() public payable {
        sendEther();
    }
}
