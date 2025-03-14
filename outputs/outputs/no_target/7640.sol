pragma solidity ^0.8.0;
contract X {
    uint constant MAX_INT_256 = 2**256-1;
    int256 constant MIN_INT_256 = -2**256;
    uint x;
    function mutator() public pure {
        x = 2**255 - 1;
    }
    function f() public pure returns (uint) {
        x = x | 0xffff000000000000;
        return x;
    }
}


pragma solidity ^0.8.0;
contract G {
    function foo() public pure returns (uint) {
        return 1;
    }
}
contract X {
    int256 constant MAX_INT_256 = int256(-1) >> 1;
    uint256 constant MIN_INT_256 = -1 << 256;

    int256 x;
    function mutator() public pure {
        x = int256(-1) >> 1;
    }
}
