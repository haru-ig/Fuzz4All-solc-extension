pragma solidity ^0.8.0;
contract Semantic0034 {
    function same() public pure {
        uint x = 0;
        if (true) {
            x = 0;
        } else {
            x = true? 0 : 0;
        }
        x = true? x + 1 : x;
    }
}
