pragma solidity ^0.8.0;
contract Mutated_5_2 {
    uint public min, max;

    constructor(uint _min, uint _max) public {
        min = _min;
        max = _max;
    }

    function max1(uint x, uint y) public pure returns (uint) {
        uint z = x;
        z = x == min? y : z;
        x = min <= x && x <= min + 2919565280? y : x;
        return x;
    }
}
