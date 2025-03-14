pragma solidity ^0.8.0;
contract Maker {
    function sendMeEther() public payable returns (uint) {
    }
    receive() public {
    }
}
address testContract = address(0x9416669a907a31358139d30b422d5a692977c028);
Caller x = Caller(testContract).callSender();



Maker m = Maker(testContract);
uint amount = m.sendMeEther();
uint x = m.callSender().x();
