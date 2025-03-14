pragma solidity ^0.8.0;
contract Semantic0034 {
    bytes x;
    function same() public pure {
        uint x;
        x = 0;
        if (false) {
            x = 0;
            if (false) {
                x = 0;
            }
        } else {
            x = 0;
        }
    }
}
