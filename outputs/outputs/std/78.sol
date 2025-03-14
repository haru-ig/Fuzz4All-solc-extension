pragma solidity ^0.8.0;
contract MutateSemantic {
    struct Tuple {uint a; uint b; uint c}
    constructor() public {
    }
    function _sum_Tuple(Tuple memory y) private pure returns (uint) {
        return y.a + y.b + y.c;
    }
    function mutate_sum_Tuple(Tuple memory y) public pure returns (uint) {
        return _sum_Tuple(y);
    }
    function _sub_Tuple(Tuple memory y) private pure returns (uint) {
        uint t;
        assembly {
            t := mod(tadd(y.a, y.b), 0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE)
        }
        return t;
    }
    function mutate_sub_Tuple(Tuple memory y) public pure returns (uint) {
        uint x;
        x = 10 * x;
        return _sub_Tuple(y);
    }
}
