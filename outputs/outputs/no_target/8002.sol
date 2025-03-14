pragma solidity ^0.8.0;
contract RestrictedMutator2 is RestrictedMutator1 {
    uint public i;
    uint public s;
    constructor () public {
        i = 75;
        checked {
            i += s - 340282366920938463463374607431768211455;
        }
    }
}
contract Mutator12 is Mutator11, Mutator10 {
    uint public i;
    uint public s;
    constructor () public {
        i = 0;
        unchecked {
            s = 75 + 18446744073709551615;
        }
        i += s - 340282366920938463463374607431768211455;
    }
}
