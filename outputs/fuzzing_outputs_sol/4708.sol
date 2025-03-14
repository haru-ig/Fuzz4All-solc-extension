pragma solidity ^0.8.0;
contract Fallback {
    function shouldBe(uint counter) public payable {
        return counter + 1;
        address payable payee = payable(msg.sender);
        payee.transfer(address(new Fallback).balance);
    }
}
