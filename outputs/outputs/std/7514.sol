pragma solidity ^0.8.0;
contract WorstCase2 {
    function worstCase0() public pure returns (uint112, uint) {
        uint256 a = 2;
        a += 8;
        a = a + 1;
        a = a * 9;
        a = a / 14;
        uint112 b = 123456;
        b += 466214754;
        b = b + 1;
        b = b * 65536;
        b = b / 476301;
        return (b, 22551);
    }
}
