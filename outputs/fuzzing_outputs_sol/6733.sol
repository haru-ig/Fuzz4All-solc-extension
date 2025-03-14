pragma solidity ^0.8.0;
contract CompressedMutator {
    function CompressedMut(uint b) public {
        uint value = 8 * (10 ** (18 - b));
        emit CompressedMutLog(value);
    }
    event CompressedMutLog(uint c);
}

pragma solidity ^0.8.0;
contract Test {
    function Test() public {
        Mutator mutator = new Mutator();
        CompressedMutator compressedMutator = new CompressedMutator();
        for (uint i=0; i<50000; i++) {
            if (fallback(msg.value, mutator, compressedMutator)) {
                i.revert();
            }
        }
    }
}
