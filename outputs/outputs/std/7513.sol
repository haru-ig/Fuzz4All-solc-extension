pragma solidity ^0.8.0;
contract WorstCase2 {
    uint public a;

    function worstCase0() public pure {
        uint256 h = 3;
        uint256 m = h + 1;
        uint256 l = 6 % 5;
    }
}
