pragma solidity ^0.8.0;
contract Mutator {
    struct Counter {
        uint next;
    }
    mapping (address => Counter) public myContract;

    function shouldBe(uint next) public {
        require(myContract[msg.sender].next == 0, "Counter should be zero");
        myContract[msg.sender].next = next;
        myContract[msg.sender].next++;
    }
}
