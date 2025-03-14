pragma solidity ^0.8.0;
contract Semantic0032 {
    function same() public return {
        uint x;
        x = 0;
        if (false) {
            x = 0;
            break;
        }
    }
}
