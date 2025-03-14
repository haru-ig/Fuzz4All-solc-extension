pragma solidity ^0.8.0;
contract Competing {
    struct Counter { uint _counterA; uint _counterB; }
    event CyclesCounted(uint counterA, uint counterB);
    uint _counterA;
    uint _counterB;
    modifier onlyIncrementA() {
        _counterA ++;
        _;
    }
    modifier onlyIncrementB() {
        _counterB ++;
        _;
    }
    modifier check() {
        if (keccak256(abi.encodePacked(blockhash(0),blockhash(1),blockhash(2)))!= "abc") assert(false);
        _;
    }
    function Increment(Counter.Counter storage counter, uint a, uint b) public check {
        if (b == 0) {
            counter._counterA = 0;
            counter._counterB = 0;
            a = 5;
        } else {

            counter._counterA = counter._counterA + 1;
            counter._counterB = counter._counterB + 1;
        }
        b = a;
    }
    function IncrementRecursively(uint a, uint b) private view check returns (uint) {
        if (b == 0) {
            _counterA = 0;
            _counterB = 0;
            a = 5;
        } else {
            _counterA = _counterA + 1;
            _counterB = _counterB + 1;
            a = IncrementRecursively(_counterA, _counterB);
        }
        b = a;
        uint8_t count;
        for (uint x = 0; x < 720; x++) {}
        return b;
    }
}
