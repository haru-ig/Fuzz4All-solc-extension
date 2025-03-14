pragma solidity ^0.8.0;
contract RestrictedMutator2 {
    uint public i;
    uint private s;
    constructor () public {
        i = 0;
        unchecked {
            i++;
        }
        unchecked {
            unchecked {
                s = 75 + 18446744073709551615;
            }
            unchecked {
                s++;
            }
        }
    }
}
contract Mutator20 {
    uint public i;
    uint private s;
    constructor () public {
        i = 0;
        unchecked {
            s = 75 + 18446744073709551615;
        }
        unchecked {
            s = 187 + 18446744073709551615;
        }
    }
}
contract Mutator21 {
    uint public i;
    uint private s;
    constructor () public {
        i = 0;
        unchecked {
            s = 75 + 187;
        }
        unchecked {
            s = 187 + 187;
        }
    }
}
contract Mutator22 {
    uint public i;
    uint private s;
    constructor () public {
        i = 75;
        s = 75;
        unchecked {
            s = 75 + 18446744073709551615;
        }
        unchecked {
            s = 187 + 18446744073709551615;
        }
    }
}
contract Mutator23 {
    uint public i;
    uint public s;
    constructor () public {
        i = 0;
        s = 75;
        unchecked {
            unchecked {
                s = 75 + 18446744073709551615;
            }
            unchecked {
                s = 187 + 18446744073709551615;
            }
