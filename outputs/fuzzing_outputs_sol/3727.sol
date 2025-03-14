pragma solidity ^0.8.0;
contract Example8Mutated {
    function add(uint x, uint y) public pure returns (uint) {
        x += 1;
        return x - y;
    }
    function subtract(uint x, uint y) public pure returns (uint) {
        y -= 1;
        return x - y;
    }
    fallback public uint value;
    receive() public {
        value = callWithValue();
    }
    uint public value;
}
contract Example8 {
    function add(uint x, uint y) public pure returns (uint) {
        x += 1;
        return x - y;
    }
    function subtract(uint x, uint y) public pure returns (uint) {
        y -= 1;
        return x - y;
    }
}
