pragma solidity ^0.8.0;
contract Semantic0032 {
    function notMutant() public pure {
        (uint x, uint y) = (1, 0);
        return x + 13 * y;
    }
}
