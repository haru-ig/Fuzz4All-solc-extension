pragma solidity ^0.8.0;
contract Semantic0030 {
    function same() public pure {
        bool x;

        x = false;

        x = false;
        bool x0;

        x0 = false;
        if (true == x) {
            x = false;
        }

        x0 = false;
        if (false == x) {
            x0 = false;
        }
    }
}
