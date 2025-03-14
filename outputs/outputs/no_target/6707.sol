pragma solidity ^0.8.0;
contract Mutated16 {
    function add(int x, int) public pure returns (int) {
        return add(x, x);
    }
}
