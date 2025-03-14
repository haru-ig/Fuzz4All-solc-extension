pragma solidity ^0.8.0;
contract RestrictedMutator1 {
    uint i;
    uint s;
    constructor () public {
        i = 75;
        unchecked {
            i -= s - 18446744073709551615;
        }
    }
}

pragma solidity ^0.8.0;
contract Mutator10 {
    uint public i;
    uint private s;
    constructor () public {
        i = 0;
        unchecked {
            s = 75 + 18446744073709551615;
        }
    }
}

pragma solidity ^0.8.0;
contract Mutator11 {
    uint public i;
    uint private s;
    constructor () public {
        i = 0;
        unchecked {
            s = 75 + 78;
        }
    }
}
