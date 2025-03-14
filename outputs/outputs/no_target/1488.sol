pragma solidity ^0.8.0;
contract Semantic0031 {
    function same() public pure {
        uint x;
        x = 0;
        if (false) {
            x = 0;
        }
    }
}
