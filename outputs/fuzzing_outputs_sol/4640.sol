pragma solidity ^0.8.0;
contract Mutator {
    function () public payable fallback {
        Mutator mutator = Mutator(msg.sender);
        mutator.shouldBe(1);
    }
}
