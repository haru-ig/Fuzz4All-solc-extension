pragma solidity ^0.8.0;
contract X {
    uint constant X = 0;
    function x() public pure returns (uint) {
        unchecked {
            uint x = uint(X) * X;
            return uint160(x * uint(X));
        }
    }
}
