pragma solidity ^0.8.0;
contract Mutated {
    uint8[][] nonInline2;
}

pragma solidity ^0.8.0;
contract A {
    function f(uint8 [] memory)
    public pure {
        return 0;
    }
    function g(uint8[][] memory arr) public pure {
        arr[1][2] = 0;
        return arr[1][2];
    }
}

pragma solidity ^0.8.0;
contract DynamicArrays {
    function f(uint8[][][] memory arr, bytes32 size)
    public pure {
        return arr[addr(this)][1][2][size];
    }
}
