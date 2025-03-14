pragma solidity ^0.8.0;
contract SymbolicEquality_ArrayMutations23v2 {
    uint a;
    constructor () public {
        uint l = a;
        a = l - 1u + (uint(-(uint(-1)) + l));
    }
}

pragma solidity ^0.8.0;
contract SymbolicEquality_ArrayMutations24v2 {
    uint a;
    address[] storage b;
    constructor () public {
        uint l;
        uint h = uint(uint(l));
    }
}

pragma solidity ^0.8.0;
contract SymbolicEquality_ArrayMutations25v2 {
    uint a;
    uint[] storage b;
    constructor () public {
        uint l;
        l = uint(uint(uint(uint(l))));
    }
}
