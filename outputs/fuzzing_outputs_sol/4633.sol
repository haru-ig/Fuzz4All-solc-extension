pragma solidity ^0.8.0;
contract Mutator {
    struct Counter {
        uint next;
    }
    mapping (address => Counter) public myContract;
    function shouldBe(uint next) public {
        myContract[msg.sender].next = next;
    }
    function incrementBy(uint amount) public {
      require(myContract[msg.sender].next+amount==next,"next+amount is not equal to myContract.next+amount");
    }
}
