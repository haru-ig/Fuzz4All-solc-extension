pragma solidity ^0.8.0;
contract WorstCase1 {
    function worstCase0() public pure returns (uint256) {
        uint a = 2;
        a += 8;
        a = a + 1;
        a = a * 7;
        a = a / 11;
        return 6553;
    }
}
