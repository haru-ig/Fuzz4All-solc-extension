pragma solidity ^0.8.0;
contract Semantic0035 {

    function same() public pure {
        uint x = 0;
        if (true) {
            x = 0;
        } else {
            x = 0;
        }
        x = x - 1;
    }
}
