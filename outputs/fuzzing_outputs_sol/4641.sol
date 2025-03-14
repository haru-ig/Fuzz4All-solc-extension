pragma solidity ^0.8.0;
import "./Mutator.sol";
contract MutatedMutator1 is Mutator {
    constructor(uint _counter) Mutator(_counter) { }

    function makeAChange() public {
        Mutator.mutators[msg.sender] = Mutator.mutators[msg.sender] + 1;
    }

    function shouldBe(uint counter) internal view returns (bool) {
        bool res = Mutator.shouldBe(counter + 1);

        return res;
    }
}
contract MutatedMutator2 is Mutator {
    uint counter;
    constructor () { }

    function shouldBe(uint _counter) internal view returns (bool) {
        bool res1 = Mutator.shouldBe(counter);
        bool res2 = Mutator.shouldBe(counter + 1);
        bool res3 = Mutator.shouldBe(counter + 2);
        uint counter2 = Mutator.mutators[msg.sender];
        bool res4 = counter2 == 1;
        bool res5 = counter2 == 2;
        return res1 && res2 && res3 && res4 && res5;
    }
}
