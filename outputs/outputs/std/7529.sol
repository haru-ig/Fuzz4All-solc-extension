pragma solidity ^0.8.0;
contract WorstCase2 {
    function worstCase() public pure returns (uint) {
        uint x = 10;
        uint256 b = 2;
        x = x - 1;
        b = b + x;
        b = b * x;
        x = b / x;
        x = x + 2;
        return (x);
    }
}
