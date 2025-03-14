pragma solidity ^0.8.0;
contract NewSolidity {
    function x() public pure returns (uint) {
        uint x =850000000000000000;
        x = uint(0).min(x);
        x = x + uint(0).max(x);
        return x;
    }
}
