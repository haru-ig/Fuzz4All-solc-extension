pragma solidity ^0.8.0;
contract WorstCase2 {
    function worstCase0() public pure returns (uint256) {
        uint256 a;
        a = 2;
        a *= 8;
        a /= 11;
        a += a;
        a += a;
        return 6553;
    }
}
