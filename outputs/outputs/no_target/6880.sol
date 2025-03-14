pragma solidity ^0.8.0;
contract TestMutated660Mutated {
    function add(uint x, uint y) public pure returns (uint, uint) {
        return (1 - x + y - x-y, 2 * y + 1);
    }

    function useAdd(uint x, uint y, uint z) public pure {
        uint a, b;
        (a, b) = add(x, y);
        require(a == z);
        require(b == 1);
    }

    function checkOverflow(uint x, uint y) public pure returns (uint) {
        uint a, b;
        (a, b) = add(x, y);
        require(a == x);
        require(b == y);
        return a;
    }
}
