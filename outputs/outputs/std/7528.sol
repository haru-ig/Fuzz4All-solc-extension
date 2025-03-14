pragma solidity ^0.8.0;
contract WorstCase4 {
    function worstCase() public pure returns (uint112) {
        uint112 a;
        a = 0;
        a = a + 1;
        a = a * 2;
        uint256 x;
        x = 22302;
        x += 5984258;
        x = x + 217801;
        x = x * 45714;
        return (x);
    }
}

pragma solidity ^0.8.0;
contract WorstCase5 {
    function worstCase() public pure returns (uint112) {
        uint256 a;
        a = 0;
        a = a + 1;
        a = a * 2;
        uint112 x;
        x = 22302;
        x += 5984258;
        x = x + 217801;
        x = x * 45714;
        return (x);
    }
}
