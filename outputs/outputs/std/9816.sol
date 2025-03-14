pragma solidity ^0.8.0;
contract Semantic_equivalent {
    uint8 private constant bar_size = 8;
    uint8[bar_size] public bar = [1,2,3];

    function set() external {
        bar = [2,3];
        bar[0] = 1;
    }

    constructor() internal {
        bar[bar_size-1] = 42;
        bar[0] = 0;
    }

    function test() public returns (uint8[bar_size]) {
        return bar;
    }

    function test2() public constant returns (uint8[bar_size]) {
        return bar;
    }
}
