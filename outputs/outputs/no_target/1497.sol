pragma solidity ^0.8.0;
contract Semantic0034 {
    bytes x;
    function same() public pure {
        uint x;
        x = 0;
        uint x2 = 129;
        uint x4 = 0;
        x += 1;
        x += 1;
        x4 -= 1;
        x2 += x;
        x4 = x + x;
        x = 0;
        x -= x;
    }
}
