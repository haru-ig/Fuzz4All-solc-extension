pragma solidity ^0.8.0;
contract FallbackMutator {
    constructor(Mutator _initialMutator) {}
    Mutator mutator;
    mapping(uint => uint) internal counters;
    constructor(Mutator _initialMutator, Mutator.Fallback() payable _fallbackMutator) {
        mutator = Mutator(_fallbackMutator);
        counters[0] = 0;
    }
    function shouldBe() internal view returns (bool) {
        return mutator.shouldBe(counters[0]);
    }

    function receive() {
        uint _value = msg.value;
        if (mutator.shouldBe(_value)) {
            counters[0]++;
            mutator.setShouldBe(counters[0]);
            _value = 0;
        }
        else if (_value == 0) {
            _value = (uint()) (-1);
            counters[0]++;
        }
        revert("Not a valid fallback function");
    }
}
