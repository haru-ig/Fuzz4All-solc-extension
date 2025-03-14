pragma solidity ^0.8.0;
contract WorstCase4 {
    function worstCase() public pure returns (uint16) {
        uint256 a = 2;
        a = a + 8;
        a = a + 1;
        a = a * 9;
        a = a / 14;
        uint16 x = 7264;
        x += 8390;
        x = x + 18521;
        x = x * 6230;
        return (x);
    }
}
