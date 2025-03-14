pragma solidity ^0.8.0;
contract Semantic0032 {
    bytes x;
    function same() public pure {
        uint x;
        x = 0;
        if (x == 0) {
            x = 0;
        }
    }
}


pragma solidity ^0.8.0;
contract Semantic0033 {
    bytes x;
    function same() public pure {
        uint x;
        x = 0;
        if (false) {
            x = 0;
        } else {
            x = 0;
        }
    }
}
