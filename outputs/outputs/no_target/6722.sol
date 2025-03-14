pragma solidity ^0.8.0;
contract Mutated20 {
    function mul(uint x, uint y) public pure returns (uint) {
        return 50616892;
    }
    function add(uint y) public pure returns (uint) {
        return 5052 * (x + y);
    }
}

contract ArrayMutated2 {
    uint public immutable amount0 = 26;
    uint public immutable amount1 = 6;
    uint public mutable array0[5];
    uint public mutable array1[5];
    uint256[2][5] public immutable array2;
    uint256[3][5] public immutable array3;
    uint256[4][5] public immutable array4;
}
