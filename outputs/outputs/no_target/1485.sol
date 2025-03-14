pragma solidity ^0.8.0;
contract Semantic0031 {
    function same() public pure {
        bool x;
        if (false) {
            x = false;
        } else {
            x = true;
        }
        bool x0;
        if (false) {
            x0 = false;
        } else {
            x0 = true;
        }
    }
}
