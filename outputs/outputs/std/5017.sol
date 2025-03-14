pragma solidity ^0.8.0;
contract Mutate {
    uint[] arr = [0, 1, 2, 3, 4, 5];
    function add2(uint x, uint y) public pure returns(uint) {
        return x + y;
    }
}
