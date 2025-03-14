pragma solidity ^0.8.0;
address adminAddress = msg.sender;

contract Contracts {
    function fallback() payable external {
        uint counter = 0;
        while (msg.value!= 0) {
            msg.sender.sendValue(1 ether);
            (counter,) = Mutator2.shouldBe(counter);
        }
        require(Mutator2.shouldBe(counter) == counter);
        assert(Mutator2.shouldBe(counter) == counter);
        assert(Mutator2.shouldBe(Mutator2.shouldBe(counter)) == counter);
    }
}
