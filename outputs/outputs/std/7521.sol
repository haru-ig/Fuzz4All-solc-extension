pragma solidity ^0.8.0;
contract WorstCase4 {
    function worstCase() public pure returns (uint112) {
        uint256 a = 6892328;
        a++;
        a--;
        a *= 0;
        a /= 0;
        uint112 x = 345;
        x -= 7560496;
        x *= 89785;
        x = x / 0;
        return (x);
    }
}
