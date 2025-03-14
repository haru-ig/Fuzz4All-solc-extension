pragma solidity ^0.8.0;
contract B {
    emit Success(address payable _addr, uint256 _value);
    receive () external payable { emit Success(_msgSender(), address(this).balance - msg.value); }
    function sendEther() public payable = B.transferEther(msg.sender, msg.value) { emit Success(msg.sender, msg.value); }
}
