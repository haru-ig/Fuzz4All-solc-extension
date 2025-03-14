pragma solidity ^0.8.0;
contract Mutate4 {
    uint256 public mutable uint1 = 42;
    function main() public {
        uint256 mut_uint1 = uint1;
        uint256 mut_maxInt = int256(2**255);
        mut_maxInt = 2 / mut_uint1;
    }
}
