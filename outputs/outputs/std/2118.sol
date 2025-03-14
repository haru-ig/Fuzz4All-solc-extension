pragma solidity ^0.8.0;
contract Mutated_2_3_4 {
    function min(uint x, uint y) public pure returns (uint a) {
        uint256 t0 = x < y? x : y;
        uint256 a1 = t0 < x? t0 : x;
        uint256 a2 = a1;
        a = t0 < x? a1 : a2;
        require(a >= x, "Second input must be >= first input");
    }
}

pragma solidity ^0.8.0;
contract Mutated_2_3_4 {
    function min(uint x, uint y) public pure returns (uint a) {
        uint256 t0 = x < y? x : y;
        a = t0 < x? t0 : x;
    }
}
