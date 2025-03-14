pragma solidity ^0.8.0;








contract Mutator is Mutated {
    Mutator(address mutator) {
        setTarget(mutator);
    }
}
