pragma solidity ^0.8.0;
contract EquivalentABIv2SemanticsAreMutated3 {
    function test (uint256 _n) public pure returns (uint256 _a_) {
        return (~_n + 1 + 5*(~_n+1)) / 4;
    }
}
