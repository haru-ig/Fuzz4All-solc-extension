pragma solidity ^0.8.0;
contract Semantic0034 {
    bytes x;
    function same() public pure {
        uint x;
        x = 0;
        if (x == 0) {
            revert();
        }
    }
}
