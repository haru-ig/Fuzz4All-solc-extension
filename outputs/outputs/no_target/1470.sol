pragma solidity ^0.8.0;
contract Semantic0030 {
    function same() public pure {
        bool x;
        x = false;
        x = x;
        bool x0;
        x0 = false;
        if (false) {
            x = false;
        }
        if (false) {
            x0 = false;
        }
    }
}
