pragma solidity ^0.8.0;
contract WorstCase3 {
    function worstCase() public pure returns (uint112) {
        uint256 a = 2;
        a = 0;
        a = a + 1;
        a = a * 2;
        uint112 x = 22302;
        x += 5984258;
        x = x + 217801;
        x = x * 45714;
        return (x);
    }
}
