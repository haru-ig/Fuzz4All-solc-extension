pragma solidity ^0.8.0;
contract Semantic0036 {
    function same() public pure {
        uint x = -1;
        if (true) {
            x = -1;
        } else {
            x = 0;
        }
        x = x + 1;
    }
}
