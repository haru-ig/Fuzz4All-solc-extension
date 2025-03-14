pragma solidity ^0.8.0;
contract Semantic0030 {
    function same() public pure {
        bool x;
        x = false;
        if (false) {
            x = false;
        }
        bool x0;
        if (false) {
            x0 = false;
        }
    }
}
