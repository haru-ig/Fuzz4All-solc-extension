pragma solidity ^0.8.0;
contract Mutated_5_2 {
    function max2(uint x) public pure returns (uint) {
    uint max = 0;
    uint min = x;
    if(x < min) {min = x;}
    if(x > max) {max = x;}
    return max;
    }
}
contract Mutated_5_3 {
    function max3(uint x, uint y) public pure returns (uint) {
        uint max = x;
        if(x < y) {max = y;}
        return max;
    }
}
contract Mutated_5_4 {
    function max4( uint x, uint y ) public pure returns (uint) {
        uint max = x;
        if (x < y) {max = y;}
        else if (x > max) {max = x;}
        return max;
    }
}
