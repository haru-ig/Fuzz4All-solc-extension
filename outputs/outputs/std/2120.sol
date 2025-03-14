pragma solidity ^0.8.0;
contract Mutated_2_3_5_a {
    uint x;

    uint y;

    uint z;

    constructor() {
        x = 1;
        z = x + 42;
        y = uint(x + x);
    }

    function max(uint x, uint y) pub returns (uint a) {
        a = x > y? x : y;
        require(a <= x, 'Second input must be <= first input');
    }
}
contract Moved_2_3_5_a {
    function max(uint x, uint y) public pure returns (uint c) {
        c = x > y? x : y;
        require(c <= x, 'Second input must be <= first input');
    }
}
