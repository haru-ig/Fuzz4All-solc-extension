pragma solidity ^0.8.0;
contract Semantic0034 {
    bytes x;
    function same() public pure {
        uint[] memory x;
        x[2] = 1;
        uint x;
        if (true) {
            x = 0;
        } else {
            x = 0;
        }
    }
}
