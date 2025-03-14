pragma solidity ^0.8.0;
contract Mutator {
    struct Counter {
        uint counter;
    }
    function shouldBe(Counter memory counter) public {
        counter.counter++;
    }
}
