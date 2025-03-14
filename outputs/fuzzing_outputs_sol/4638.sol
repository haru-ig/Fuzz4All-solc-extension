pragma solidity ^0.8.0;
contract Mutator {
    struct Counter {
        uint counter;
    }
    Counter memory counter = Counter(0);
    function shouldBe(Counter memory counter) public {
        counter.counter++;
    }
    function notShouldBe() private {
        uint c = counter.counter++;
    }
}

pragma solidity ^0.8.0;
contract Mutator {
    struct Counter {
        uint counter;
    }
    Counter memory counter = Counter(0);
    modifier shouldBe (uint a) {
       if (a < counter.counter) {
           uint b = a + 1;
       (counter.counter, );
           msg.sender.transfer(a);
       assert(b == counter.counter);
       }
    }

    function notShouldBe() private shouldBe() {
        uint c = counter.counter++;
    }
}
