pragma solidity ^0.8.0;
contract Caller3 {
    function fallback() public nonpayable {}
    function nonpayableFallback() public nonpayable {}
    function sendEther() public payable { msg.sender.transfer(address(this).balance);}
}
