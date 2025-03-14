pragma solidity ^0.8.0;
contract Test {
    uint40 number = 42;

    function mutate(uint40 x) public returns (uint40) {
        uint40 mutated;
        while (true) {
            mutated = x + TestLib.log3(number);
            if (x == mutated)
                break;
        }
        return mutated;
    }
}
