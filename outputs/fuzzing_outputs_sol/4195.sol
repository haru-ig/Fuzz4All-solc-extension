pragma solidity ^0.8.0;
contract MutatorCaller {
    function mutator() public nonpayable{
        emit Success(msg.value);
        (bool success, ) = msg.sender.call{value:msg.value}("");
        require(success);
        emit Success(msg.value);
    }
    event Success(uint amount);
}
