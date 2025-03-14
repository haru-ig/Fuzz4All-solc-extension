pragma solidity ^0.8.0;
contract WorstCase5 {
    function worstCase1(uint256 x) public pure returns (uint112, uint) {
        uint256 a = 2 + x;
        a = a * 9;
        a = a + x / 14;
        uint112 b = 236454765;
        b = b + x * 65536;
        b = b + x;
        b = b / 13;
        b = b * 196592;
        b = b / 104807;
        return (b, -25763);
    }
}
