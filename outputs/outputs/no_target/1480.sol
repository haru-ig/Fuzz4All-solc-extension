pragma solidity ^0.8.0;
contract Semantic0030 {
    function same() public pure {
        bool x = false;
        if (0) {
            x = false;
        }
        bool x0;
        if (0) {
            x0 = false;
        }
    }
}
