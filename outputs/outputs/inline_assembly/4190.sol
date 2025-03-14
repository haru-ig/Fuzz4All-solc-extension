pragma solidity ^0.8.0;
contract Mutators5 {
    function decrement (uint b) external returns (uint) {
        b = 10;
        if (b >= 1) return 0;
        return 1;
    }
}
